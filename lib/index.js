import { useState } from "react";
import axios from "axios";

export default function Home() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [token, setToken] = useState(null);

  const register = async () => {
    await axios.post("http://localhost:5000/register", { email, password });
    alert("Registered successfully!");
  };

  const login = async () => {
    const res = await axios.post("http://localhost:5000/login", { email, password });
    setToken(res.data.token);
  };

  const getProfile = async () => {
    const res = await axios.get("http://localhost:5000/profile", {
      headers: { Authorization: token },
    });
    alert(JSON.stringify(res.data));
  };

  const handlePayment = async () => {
    const res = await axios.post("http://localhost:5000/create-checkout-session");
    window.location.href = `https://checkout.stripe.com/pay/${res.data.id}`;
  };

  return (
    <div style={{ padding: 20 }}>
      <h1>Next.js Auth & Billing</h1>
      <input placeholder="Email" onChange={(e) => setEmail(e.target.value)} />
      <input placeholder="Password" type="password" onChange={(e) => setPassword(e.target.value)} />
      <button onClick={register}>Register</button>
      <button onClick={login}>Login</button>
      {token && (
        <>
          <button onClick={getProfile}>Get Profile</button>
          <button onClick={handlePayment}>Pay $10</button>
        </>
      )}
    </div>
  );
}
