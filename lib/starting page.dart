
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bussinessdetail.dart';
import 'custome text.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   "assets/icons/invoice_logo.svg",
              SizedBox(
                  height: 185
              ),

          Image.asset(
            "assets/icons/8d6cd4c6-55de-4ab9-a1bf-4a33952f1c66.jpg",
              // Image.network('https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg',
                height: 200,
                // color: Colors.white,
              ),
              SizedBox(
                  height: 15
              ),
              CustomText(
                  text: "BILLINGO",
                  color: Colors.white,
                  weight: FontWeight.w900,
                  fontSize: 25
              ),
              SizedBox(
                  height: 5
              ),
              CustomText(
                  text: "Send Professional Invoice For YourNBussiness...",
                  color: Colors.white,
                  weight: FontWeight.w600,
                  height: 1.3,
                  fontSize:16
              ),
              SizedBox(
                  height: 15
              ),

              CustomBtn(
                label: "START",
                action: () {
                  Navigator.pushNamed(context, '/ShopInfo');

                },
              ),

              SizedBox(
                height:75,
              ),

              CustomText(
                  text: "Powerded by Victory Lion",
                  color: Colors.purple,
                  weight: FontWeight.w900,
                  height: 1.3,
                  fontSize:18
              ),




              Text(shopname)
            ],
          ),
        ),
      ),
    );
  }
}
