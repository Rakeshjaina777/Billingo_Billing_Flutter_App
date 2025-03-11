import 'package:billingo/bussinessdetail.dart';
import 'package:billingo/custome%20text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Paymentnote extends StatefulWidget {
  const Paymentnote({Key? key}) : super(key: key);

  @override
  State<Paymentnote> createState() => _PaymentnoteState();
}

class _PaymentnoteState extends State<Paymentnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
          color: AppColors.kPrimaryDark,
          splashRadius: 1,
        ),

        elevation: 0,
        backgroundColor: Colors.white,
        title: CustomText(
          text: "Payment Information",
          color: AppColors.kPrimaryDark,
          fontSize: 20,
          weight: FontWeight.w700,
        ),
      ),
      body: SafeArea(
        // child: NotificationListener<OverscrollIndicatorNotification>(
        //   onNotification: (scroll) {
        //     scroll.disallowIndicator();
        //     return true;
        //   },
        child: SingleChildScrollView(
          // child: GetBuilder<BusinessController>(
          //   init: BusinessController(),
          child:  Container(
            // margin: EdgeInsets.symmetric(
            //   vertical: Dimensions.calcH(5),
            //   horizontal: Dimensions.calcW(15),
            // ),
            child: Column(
                children: [


                  Image.asset(
                    "assets/icons/21101b73-8697-4119-9445-ca170d1c6583.jpg",
                    // Image.network('https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg',
                    height: 190,




                    // color: Colors.bl,
                  ),
                  Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      SizedBox(
                        height: 35,
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                                text: "Mode of Payment ",
                                color: Colors.black,
                                weight: FontWeight.w300,
                                height: 1.3,
                                fontSize:18,
                                align:TextAlign.start

                            ),
                          ),
                          CustomText(text: "*",color: Colors.red,weight: FontWeight.w900,)
                        ],
                      ),

                      TextFormField(
                        // controller: Shopname,
                        // keyboardType:
                        style: TextStyle(color: Colors.black,),
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          fillColor: AppColors.kSecondaryColor,
                          hintText: ("->  Online or Wallets"),
                          filled: true,
                        ),

                        onChanged: (value) {
                          shopname = value;

                        },
                      ),

SizedBox(
  height: 20,
),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                                text: " Payment Note",
                                color: Colors.black,
                                weight: FontWeight.w500,
                                height: 1.3,
                                fontSize:18,
                                align:TextAlign.start
                            ),
                          ),
                          CustomText(text: "*",color: Colors.red,weight: FontWeight.w900,)
                        ],
                      ),


                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 100,
                          color:AppColors.kSecondaryColor,
                          child: TextFormField(
                            // controller: Shopname,
                            // keyboardType:
                            style: TextStyle(color: Colors.black,),
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: "->Balance amount/ Pending Money",
                              fillColor: AppColors.kSecondaryColor,
                              filled: true,
                            ),

                            onChanged: (value) {
                              shopname = value;

                            },
                          ),
                        ),
                      ),


                      CustomBtn(
                          color: Colors.teal[400],
                          label: "Save",
                          action: (){

                          })




                    ],
                  ),
                ]
            ),

          ),
        ),
      ),

    );
  }
}
