import 'package:billingo/CustomerInform.dart';
import 'package:billingo/ItemListchoose.dart';
import 'package:billingo/Payment.dart';
import 'package:billingo/Signature.dart';
import 'package:billingo/bussinessdetail.dart';
import 'package:billingo/homepage.dart';
import 'package:billingo/items.dart';
import 'package:billingo/starting%20page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'custome text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Billingo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.nunitoSansTextTheme()
              .apply(bodyColor: Colors.white)),
      home:Scaffold(
        backgroundColor: Colors.grey,
        body: StartingPage(),

        
      ),

        routes: {
          "/ShopInfo": (context) => ShopInfo(),
          "/HomePage": (context) => HomePage(),
          "/Signature": (context) => Signature(),
          "/Paymentnote": (context) => Paymentnote(),
          // "/ItemlistSelect ": (context) =>MyHomePage(),
          "/ItemlistSelect ": (context) =>ItemlistSelect(),
          "/Items": (context) => Items(),
          "/CustomerInfo": (context) => CustomerInfo(),

          // "/google":(context)=>LoginWithGoogle(),
    }
    );
    
   
  }
}

