import 'package:billingo/ItemListchoose.dart';
import 'package:billingo/bussinessdetail.dart';
import 'package:billingo/custome%20text.dart';
import 'package:billingo/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    // getting the size of the window

    // size = MediaQuery.of(context).size;
    //
    // height = size.height;
    //
    // width = size.width;// var ScreenConfig;


    // ScreenConfig.init(context);

    return







      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180),


          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                // automaticallyImplyLeading: false,
                // leading:  IconButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   icon: Icon(
                //     Icons.arrow_back_ios,
                //     size: 24,
                //   ),
                //   color: AppColors.kPrimaryDark,
                //   splashRadius: 1,
                // ),

                // elevation: 0,
                // backgroundColor: Colors.grey,
                child:  Container(
                  // height: 400,
                  color: Color(0xFF4D4F52),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: "  $shopname\n",
                        color: Colors.black,
                        fontSize: 18,
                        weight: FontWeight.w900,
                      ),
                      SizedBox(
                        height: 3,
                      ),

                      CustomText(
                        // text: "   #20/07/1203\n",

                      text:  DateFormat('    dd MMMM yyyy').format(DateTime.now()),
                        color: Colors.black,
                        fontSize: 17,
                        weight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CustomText(
                        // text: "   04 October 2020",
                        text:  DateFormat( '     T: H:m:00', 'en_US').format(DateTime.now()),
                        color: Colors.black,
                        fontSize: 15,
                        weight: FontWeight.w700,
                      ),

                      Column(
                        children: [
                          Row(

                            // mainAxisAlignment: MainAxisAlignment,
                            children: [

                              SizedBox(
                                width: 15,
                              ),
                              Image.network(
                                "https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg",
                                height: 105,
                                width: 102,
                              ),

                              SizedBox(
                                width: 65,
                              ),
                              addressColumn()
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        body:
        SingleChildScrollView(
          child: Container(
            color: Colors.white10,
            child: Column(
                children: [

                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,


                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Information   " , style: TextStyle(fontSize: 18,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w900)),
                          )),
                      Icon(Icons.arrow_forward_ios_sharp,color: Colors.deepPurpleAccent,),
                    ],
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height-450,


                    child:   Stack(

                      children: <Widget>[
                        Container(
                            height: 300,
                            // width: 412,

                            child:Flexible(
                                child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [


                                      Expanded(
                                          child: SizedBox(
                                            //
                                              height: 295,
                                              width: 400,
                                              child: PageView.builder(
                                                  itemCount: 4,
                                                  scrollDirection: Axis.horizontal,
                                                  itemBuilder: (context,index)=>
                                                  //   Column(
                                                  // // children: [
                                                  // Link(
                                                  //   uri: Uri.parse(Homeadd[index].link),
                                                  //   // target: LinkTarget.blank,
                                                  //   builder: (context, followLink) =>
                                                  GestureDetector(
                                                    onTap: ()=>Navigator.pushNamed(context, '/StartingPage') ,

                                                    child:
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child:   Column(
                                                        children: [
                                                          Stack(

                                                              children:<Widget> [


                                                                Container(

                                                                  height: 150,

                                                                  // width: 70,

                                                                  margin: EdgeInsets.all(5),


                                                                  decoration: BoxDecoration(

                                                                    color: Colors.green,

                                                                    border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                    borderRadius: BorderRadius.circular(5),

                                                                    image:DecorationImage(

                                                                      image: NetworkImage("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg"),

                                                                      fit: BoxFit.fill,

                                                                    ),

                                                                    // color: Colors.grey[700],

                                                                  ),

                                                                ),
                                                                SizedBox(height: 15,),

                                                                Positioned(
                                                                    left: 32,
                                                                    // right: 45,
                                                                    top: 105,

                                                                    child: CustomText(text: "apple")),

                                                                Positioned(
                                                                  left: 52,
                                                                  // right: 45,
                                                                  top: 85,
                                                                  child: Container(



                                                                    height: 40,

                                                                    width: 80,

                                                                    margin: EdgeInsets.all(1),

                                                                    child:   Padding(
                                                                      padding: const EdgeInsets.all(3.0),
                                                                      child: Text("fg",style: TextStyle(
                                                                          color: Colors.tealAccent, fontSize: 11,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                                                    ),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      color: Colors.red,

                                                                    ),
                                                                    //

                                                                  ),
                                                                ),



                                                              ]
                                                          ),

                                                          Container(

                                                            // color: Colors.black,
                                                            child:   Text("For further Information Click on Card",
                                                                style: TextStyle(fontSize: 9,color: Colors.deepPurpleAccent,)),
                                                          ),
                                                          Container(
                                                            child:   Text("${index+1}/4",
                                                                style: TextStyle(fontSize: 13,color: Colors.deepPurpleAccent,)),
                                                          ),
                                                        ],
                                                      ),

                                                    ),
                                                  )
                                              )
                                          )
                                      ),



                                    ]
                                )
                            )
                        )





                      ],
                    ),

                  ),


                  CustomText(
                    text: "Add New Invoice:",
                    color: Colors.deepPurple,
                    fontSize: 20,
                    weight: FontWeight.w700,
                  ),


                  SizedBox(
                    height: 15,
                  ),

                  Center(
                    child: Card   (


                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(20),

                          side: BorderSide( color: Colors.white,width: 1,)

                      ),

                      color: Colors.white,



                      child: Container(
                        height: 90,
                        width: 280,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              CustomText(
                                text: "Invoice Id #85245625",
                                color: Colors.black,
                                fontSize: 18,
                                weight: FontWeight.w700,
                              ),
                              CustomText(
                                // text: "Created on 22-5-2022",
                               text: DateFormat('  dd MMMM yyyy').format(DateTime.now()),
                                color: Colors.grey,
                                fontSize: 16,
                                weight: FontWeight.w500,
                              ),

                            ]
                        ),
                      ),

                    ),
                  ),



                  Container(
                    // height: 450,
                    child: ListView.builder(

                      itemCount: 4,

                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index)=>    GestureDetector(
                        onTap: ()=>Navigator.pushNamed(context, goto[index]) ,



                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:   Container(
                            height: 95,
                            child: Card   (

                              color: Colors.white,
                              shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(10),

                                  side: BorderSide( color: Colors.white,width: 1,)

                              ),





                              child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [


                                    SizedBox(
                                      width: 11,
                                    ),
                                    SvgPicture.asset(
                                      Iconapp[index].toString(),
                                      // Image.network('https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg',
                                      height: 49,
                                      color: Colors.black,
                                    ),

                                    // Center(child: Icon(Icons.,size: 40,)),

                                    // Container(
                                    //
                                    //   height: 65,
                                    //
                                    //   width: 70,
                                    //
                                    //   margin: EdgeInsets.all(5),
                                    //
                                    //
                                    //   decoration: BoxDecoration(
                                    //
                                    //
                                    //
                                    //     border: Border.all(color:Colors.tealAccent,width: 0.5),
                                    //
                                    //     borderRadius: BorderRadius.circular(5),
                                    //
                                    //     image:DecorationImage(
                                    //
                                    //       image:   SvgPicture.asset(
                                    //         ),
                                    //
                                    //
                                    //       fit: BoxFit.fill,
                                    //
                                    //     ),
                                    //
                                    //     // color: Colors.grey[700],
                                    //
                                    //   ),
                                    //
                                    // ),
                                    SizedBox(
                                      width: 25,
                                    ),


                                    Column(
                                      //
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      // mainAxisAlignment: MainAxisAlignment.center,

                                      children: [

                                        SizedBox(
                                          height: 15,
                                        ),
                              //

                                        // Text(HomePageIconName[index],style:TextStyle(color: Colors.red),),
                                        // Text("hh",style:TextStyle(color: Colors.red),),

                              CustomText(
                                  text: HomePageIconName[index],
                                  color: Colors.black,
                                  weight: FontWeight.w700,
                                  height: 1.3,
                                  fontSize:22,
                                  align:TextAlign.start
                              ),
                              //

                                        SizedBox(
                                          height: 8,
                                        ),
                              CustomText(
                                  text: HomePageIconSubtitle[index],
                                  color: Colors.grey,
                                  weight: FontWeight.w300,
                                  height: 1.3,
                                  fontSize:14,
                                  align:TextAlign.start
                              ),

                                      ],
                                    ),
                                    SizedBox(
                                      width: 35,

                                    ),

                                    Center(child: Icon(Icons.arrow_forward_ios_sharp,size: 40,)),
                                    //
                                    // Container(
                                    //
                                    //   height: 65,
                                    //
                                    //   width: 70,
                                    //
                                    //   margin: EdgeInsets.all(5),
                                    //
                                    //
                                    //
                                    //
                                    //   decoration: BoxDecoration(
                                    //
                                    //
                                    //
                                    //     border: Border.all(color:Colors.tealAccent,width: 0.5),
                                    //
                                    //     borderRadius: BorderRadius.circular(5),
                                    //
                                    //     // image:DecorationImage(
                                    //     //
                                    //     //   image: AssetImage(""),
                                    //     //
                                    //     //   fit: BoxFit.fill,
                                    //     //
                                    //     // ),
                                    //
                                    //     // color: Colors.grey[700],
                                    //
                                    //   ),
                                    //
                                    // ),


                                  ]
                              ),

                            ),
                          ),

                        ),




                      ),
                    ),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: <Widget>[



                    CustomBtn(
                        color: Colors.tealAccent,
                        label: "Preview Invoice",
                        textColor: Colors.white,
                        action:

                            (){}

                    ),
                    CustomBtn(
                        color: Colors.black,
                        label: "Clear",
                        textColor: Colors.tealAccent,
                        action:
                            (){}


                    ),


                  ]
                  ),


        ],
            ),
          ),
        )



    );





  }
}





Column addressColumn() {
  return
     Column(

      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        CustomText(
          text: "  Shop Address\n",
          color: Colors.black,
          fontSize: 18,
          weight: FontWeight.w800,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          address,style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.2,color: Colors.black,),
         overflow: TextOverflow.ellipsis,

        ),
        SizedBox(
          height: 5,
        ),
        Text("$phone",style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.2,color: Colors.black),
        ),
      ],

  );
}

















const Iconapp = [
  "assets/icons/person_add.svg",
"assets/icons/add_item.svg",
"assets/icons/payment_method.svg",
    "assets/icons/signature_pen.svg",

];


const HomePageIconName = [
 " Invoice to",
  " Items    ",
  " Payment  ",
  " Signature",
];

const HomePageIconSubtitle = [
  "Add Customer Info.. ",
  "Add item to your...    ",
  "Add payment detail.",
  "    Sign Your Invoice  ",

];


const goto = [
  "/CustomerInfo",
  "/Items",
  "/Paymentnote",
  "/Signature",

];



//
//
//         Column(
//           children: [invoiceHeader(), InvoiceBody()],
//         );
//     }
//
//     Widget invoiceHeader() {
//       return SafeArea(
//         child: Container(
//
//
//           height: 200,
//           color: Color(0xFF4D4F52),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Invoice",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 13),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   topHeaderText("#20/07/1203"),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   // TODO: form get actual date and format it accondingly
//                   topHeaderText("04 October 2020"),
//                 ],
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset(
//                         "assets/icons/icons8-receipt.png",
//                         height: 28,
//                       ),
//                       addressColumn()
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
//
//     }
//
//     Column addressColumn() {
//       return Column(
//         // crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text(
//             "Delivery address",
//             style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Text(
//             "KK 234 rd 23 st",
//           ),
//           SizedBox(
//             height: 0,
//           ),
//           Text("Kimihurura")
//         ],
//       );
//     }
//
//     Text topHeaderText(String label) {
//
//       return Text(label,
//           style: TextStyle(
//               color: Colors.white.withOpacity(0.6),
//               fontSize: 13));
//     }
// }
//
// Widget InvoiceBody() {
//   return Container(
//     height: 430,
//     color: Colors.red,
//   );
// }