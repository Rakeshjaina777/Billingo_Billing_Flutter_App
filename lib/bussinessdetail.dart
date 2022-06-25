

import 'package:billingo/homepage.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'custome text.dart';

 late String shopname = "";
 late String gmail = "";
 late String phone = "";
 late String address = "";

class ShopInfo extends StatefulWidget {
  const ShopInfo({Key? key}) : super(key: key);

  @override
  State<ShopInfo> createState() => _ShopInfoState();
}

class _ShopInfoState extends State<ShopInfo> {


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
    text: "Shop Detail",
    color: AppColors.kPrimaryDark,
    fontSize: 22,
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
                    "assets/icons/f9669eb4-6a13-481d-8f69-b89f571d021d.jpg",
                    // Image.network('https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg',
                    height: 180,




                    // color: Colors.bl,
                  ),
                  CustomText(
                    text: "(Assuming Old man have too many shop)",
                    fontSize: 15,
                    weight: FontWeight.bold,
                    color: AppColors.kPrimaryColor,
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
                          text: "Shop Name",
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
                hintText: "->Detail Shop Name",
                fillColor: AppColors.kSecondaryColor,
                filled: true,
              ),

              onChanged: (value) {
                shopname = value;

              },
              ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                          text: "Shop no.",
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
                    hintText: "->",
                    fillColor: AppColors.kSecondaryColor,
                    filled: true,
                  ),

                  // onChanged: (value) {
                  //    = value;
                  //
                  // },
                ),



              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                        text: " Shop . Phone number",
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

              TextFormField(
                // controller: Shopname,
                // keyboardType: Keyboard.
                style: TextStyle(color: Colors.black,),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "->98025XXX",
                  fillColor: AppColors.kSecondaryColor,
                  filled: true,
                ),

                onChanged: (value) {
                  phone = value;

                },
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                        text: " Shop Address",
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

                        fillColor: AppColors.kSecondaryColor,
                        filled: true,
                        hintText: "->Please Write detail Adress ",
                      ),

                      onChanged: (value) {
                        address = value;

                      },
                    ),
                ),
              ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DottedBorder(
                    color: AppColors.kPrimaryLight,
                    child: InkWell(
                      onTap: () async {
                        XFile? file = await ImagePicker()
                            .pickImage(
                            source: ImageSource.gallery);

                      },
                      child: SizedBox(
                        height: 100,
                        width: 200,

                        child:    Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            IconButton(
                              onPressed:  null,
                              // onPressed: () async {
                              //   XFile? file = await ImagePicker()
                              //       .pickImage(
                              //       source: ImageSource.gallery);
                              //
                              // },
                              splashRadius: 20,
                              icon: Icon(
                                Icons.add,
                                color: AppColors.kPrimaryColor,
                                size: 30,
                              ),
                            ),

                            CustomText(
                              text: "Add your Shop logo",
                              fontSize: 15,
                              weight: FontWeight.bold,
                              color: AppColors.kPrimaryColor,
                            )
                          ],
                        ),


                      ),
                    ),
                  ),
                ),



                CustomBtn(
                  color: Colors.teal[400],
                    label: "Save",
                    action: (){
                  // Navigator.pushNamed(context, '/HomePage');

                      Navigator.push(context, MaterialPageRoute(builder:(context )=>HomePage()));
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



                  // CustomInput_eng(
              //   controller: controller.businessNameInputController,
              //   label: AppStrings.ADD_BUSINESS_NAME,
              //   isRequired: true,
              // ),
              // CustomInput_eng(
              //   controller: controller.businessEmailInputController,
              //   label: AppStrings.ADD_BUSINESS_EMAIL,
              //   isRequired: true,
              //   type: TextInputType.emailAddress,
              // ),
              // CustomInput_eng(
              //   controller: controller.businessPhoneInputController,
              //   label: AppStrings.ADD_BUSINESS_PHONE,
              //   isRequired: true,
              //   type: TextInputType.phone,
              // ),
              // CustomInput_eng(
              //   controller: controller.businessAddressInputController,
              //   label: AppStrings.ADD_BUSINESS_ADDRESS,
              //   height: Dimensions.calcH(100),
              //   isRequired: true,


          // GetBuilder<InvoiceController>(
          //   builder: (controller) => DottedBorder(
          //     color: AppColors.kPrimaryLight,
        //   SizedBox(
        //     height: 150,
        //     width: 200,
        //     child:  InkWell(
        //         onTap: () async {
        //           XFile? file = await ImagePicker()
        //               .pickImage(source: ImageSource.gallery);
        //           // if (file != null) {
        //           //   Uint8List imageBytes =
        //           //   await file.readAsBytes();
        //           //   controller.setBusinessLogo(imageBytes);
        //           // }
        //         },
        //         child: Image.memory(controller.logo!))
        //         : Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       IconButton(
        //         onPressed: () async {
        //           XFile? file = await ImagePicker()
        //               .pickImage(
        //               source: ImageSource.gallery);
        //           if (file != null) {
        //             Uint8List imageBytes =
        //             await file.readAsBytes();
        //             controller
        //                 .setBusinessLogo(imageBytes);
        //           }
        //         },
        //         splashRadius: 20,
        //         icon: Icon(
        //           Icons.add,
        //           color: AppColors.kPrimaryColor,
        //           size: 30,
        //         ),
        //       ),
        //       CustomText(
        //         text: "Add your logo",
        //         fontSize: Dimensions.calcH(15),
        //         weight: FontWeight.bold,
        //         color: AppColors.kPrimaryColor,
        //       )
        //     ],
        //   ),
        // ),
        //

        // SizedBox(
        //   height: Dimensions.calcH(50),
        // ),
        // CustomBtn(
        //   label: AppStrings.SAVE_BTN,
        //   action: () {
        //     bool isValid = controller.validate();
        //     if (isValid) {
        //       Get.back();
        //     }
        //   },
        //   color: AppColors.kPrimaryColor,
        //   textColor: Colors.white,
        //   width: Dimensions.calcW(150),
        // )


//
// class BusinessController extends GetxController {
//   Business? business;
//   TextEditingController businessNameInputController = TextEditingController();
//   TextEditingController businessEmailInputController = TextEditingController();
//   TextEditingController businessPhoneInputController = TextEditingController();
//   TextEditingController businessAddressInputController =
//   TextEditingController();
//
//   // validate input
//   bool validate() {
//     if (businessNameInputController.text.isEmpty ||
//         businessEmailInputController.text.isEmpty ||
//         businessPhoneInputController.text.isEmpty ||
//         businessAddressInputController.text.isEmpty) {
//       Get.snackbar(
//         "Error",
//         "Please Fill all the required fields",
//         snackPosition: SnackPosition.BOTTOM,
//       );
//       return false;
//     } else {
//       business = Business(
//           name: businessNameInputController.text,
//           address: businessAddressInputController.text,
//           phone: businessPhoneInputController.text,
//           email: businessEmailInputController.text,
//           logo: Get
//               .find<InvoiceController>()
//               .logo);
//       return true;
//     }
//   }
//
//   @override
//   void onClose() {
//     if (business != null) {
//       businessNameInputController.clear();
//       businessEmailInputController.clear();
//       businessPhoneInputController.clear();
//       businessAddressInputController.clear();
//       Get.find<InvoiceController>().setBusiness(business!);
//     }
//     super.onClose();
//   }


class CustomInput_eng extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String label;
  final bool isRequired;
  final double? height;
  const CustomInput_eng({
    required this.label,
    this.controller,
    this.type,
    this.height,
    this.isRequired = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 15
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
          ),
          // CustomRichText(
          // text: label,
          // children: (isRequired)
          // ? [
          // const TextSpan(
          // text: " *",
          // style: TextStyle(
          // color: Colors.red,
          // ),
          // ),
          // ]
          //     : [],
          // ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: AppColors.kSecondaryColor,
            height: 50,
            margin: EdgeInsets.only(
              right: 50,
            ),
            child: TextFormField(
              controller: controller,
              keyboardType: type,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: AppColors.kSecondaryColor,
                filled: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}

