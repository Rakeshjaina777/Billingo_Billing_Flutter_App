import 'package:billingo/custome%20text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<dynamic> tempArray = [];

List<num> Price= [];
List<String> Catalog= [];
num sum=0;
// var sum;
// main(List<string> args) {
//   var sum = 0;
//   var given_list = [1, 2, 3, 4, 5];
//
//   for (var i = 0; i < given_list.length; i++) {
//     sum += given_list[i];
//   }
// //
//   print("Sum : ${sum}");
// }



class ItemlistSelect extends StatefulWidget {


  const ItemlistSelect({Key? key}) : super(key: key);



  @override
  State<ItemlistSelect> createState() => _ItemlistSelectState();
}

class _ItemlistSelectState extends State<ItemlistSelect> {


  // List<Widget> itemsData = [];
  // List<dynamic> responseList = FOOD_DATA;
  // List<Widget> listItems = [];
  // num
  // sum=
  // Price.fold(0,(  sum ,item) => sum+ item);
  //




  @override
  Widget build(BuildContext context) {
    // var sum ;
    return Scaffold(
      appBar:   AppBar(
        automaticallyImplyLeading: false,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context,true);
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
          text: "Add Item To List",
          color: AppColors.kPrimaryDark,
          fontSize: 22,
          weight: FontWeight.w700,
        ),
      ),



      body:     SingleChildScrollView(
        child: Column(
            children: [
              Container(
                // height: 760,
                child: ListView.builder(
                  // controller: controller,
                    shrinkWrap: true,
                    itemCount: FOOD_DATA.length,
                    // physics: BouncingScrollPhysics(),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // double scale = 1.0;
                      // if (topContainer > 0.5) {
                      //   scale = index + 0.5 - topContainer;
                      //   if (scale < 0) {
                      //     scale = 0;
                      //   } else if (scale > 1) {
                      //     scale = 1;
                      //   }
                      // }
                      return InkWell(


                          onTap: (){



                            setState((){


                              // Price.forEach((element)){
                              //   sum =sum + element
                              // });

                              if(tempArray.contains(FOOD_DATA [index].name)){
                                tempArray.remove(FOOD_DATA [index].name);
                                // tempArray.remove(FOOD_DATA [index].brand);
                                // tempArray.remove(FOOD_DATA [index].price);
                                Catalog.remove(FOOD_DATA [index].brand);
                                Price.remove(FOOD_DATA[index].price);
                              }
                              else{
                                tempArray.add(FOOD_DATA[index].name);

                                // tempArray.add(FOOD_DATA [index].brand);
                                // tempArray.add(FOOD_DATA [index].price);
                                Price.add(FOOD_DATA[index].price);
                                Catalog.add(FOOD_DATA [index].brand);


                              }



                            });

                            print("myvalue");
                            print(tempArray.toString());
                            print(Price);

                            print(sum);

                          },


                          // child: Column(
                          //   children: [
                          // Opacity(
                          //   opacity: scale,
                          //   child: Transform(
                          //     transform:  Matrix4.identity()..scale(scale,scale),
                          //     alignment: Alignment.bottomCenter,
                          //     child: Align(
                          //         heightFactor: 0.7,
                          //         alignment: Alignment.topCenter,
                          //         child: itemsData[index]),
                          child:
                          Container(
                              height: 130,
                              // width: 125,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          FOOD_DATA[index].name,
                                          style: const TextStyle(fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   FOOD_DATA[index].brand,
                                        // style: const TextStyle(fontSize: 17, color: Colors.grey),
                                        // ),
                                        SizedBox(
                                          height: 10,
                                        ),

                                        Row(
                                          children: [
                                            Text(
                                              " Rs. ${FOOD_DATA[index].price}",
                                              style: const TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 12,
                                          width: 12,
                                        ),
                                        Center(
                                          child: Container(
                                            height: 35,
                                            width: 85,

                                            decoration: BoxDecoration(


                                              color:tempArray.contains(FOOD_DATA [index].name) ? Colors.red:Colors.green,
                                              border: Border.all(color:Colors.black,width: 0.9),

                                              borderRadius: BorderRadius.circular(15),



                                              // color: Colors.grey[700],

                                            ),



                                            child: Center(
                                              child: CustomText(
                                                  text:tempArray.contains(FOOD_DATA [index].name) ? "Remove": "ADD",
                                                  color: Colors.white,
                                                  weight: FontWeight.w900,
                                                  height: 1.3,
                                                  fontSize:18
                                              ),
                                            ),
                                          ),
                                        ),



                                      ],
                                    ),
                                    // Image.asset(
                                    //   "assets/images/${post["image"]}",
                                    Image.asset(FOOD_DATA [index].brand,
                                      // height: double.infinity,
                                      height: 140,
                                      width: 100,
                                    )
                                  ],
                                ),
                              )));
                    }),
              ),

              Divider(
                height: 5,
                color: Colors.red,
              ),
              Column(
                children: <Widget>[

                  // for(var item in Price){
                  //   sum=item +sum;
                  // }
                  //
                  //
                  //                     Text(item,style: TextStyle(color: Colors.red),)


                ],
              )


            ]
        ),
      ),




    );
  }
}






class Data{
  final String name;

  final String brand ;
  final num price;

  Data({required this.name, required this.brand, required this.price });


}

List<Data> FOOD_DATA =[

  Data(

    name:" Water Bottle" ,
    brand: "assets/images/w.jpg",
    price: 20,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),

  Data(

    name:" Pizza" ,
    brand: "assets/images/pizza.png",
    price: 149,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),

  Data(

    name:" Burger" ,
    brand: "assets/images/burger.png",
    price: 99,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),
  Data(

    name:" Cola" ,
    brand: "assets/images/cola.png",
    price: 49,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),
  Data(

    name:" Ice-Cream " ,
    brand: "assets/images/ice_cream.png",
    price: 79,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),

  Data(

    name:" Sandwich" ,
    brand: "assets/images/sandwich.png",
    price: 49,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),

  Data(

    name:" Cheese_dip " ,
    brand: "assets/images/cheese_dip.png",
    price: 149,
    // Image3: 'Assests/Myntra/3.jpg',
    // ReferalCode:" Referal Code:\nInside ",
    // Feacture1:"  Shop with Hritik ROshan  \n And Get Upto 10% Return on your Order ",
    // Feacture2:" Register on Amazon Pay and \n get ₹40 instant cash from our side + daily Cashback by amazon ",
    // goto: "/Myntra"
  ),


  Data(

    name:" Noodles " ,
    brand: "assets/images/burger.png",
    price: 79,
  ),
  // Data(
  //
  //     Companyname:"Flipkart👀" ,
  //     Image1: 'Assests/Flipkart/1.jpg',
  //     Image2: 'Assests/Flipkart/2.png',
  //     Image3: 'Assests/Flipkart/3.jpg',
  //
  //     ReferalCode:"Referal Code:\nGo08w34",
  //     Feacture1:" Big Billion Days Are Back  \n And Get Upto 10% Return on your Order ",
  //     Feacture2:"' Register on Amazon Pay and \n get ₹50 instant cash from our side + daily Cashback by gPay '",
  //     goto: "/Flipkart"
  // ),
  //
  // Data(
  //
  //     Companyname:"Amazon👀 " ,
  //     Image1: 'Assests/AmazonShoping/1.jpg',
  //     Image2: 'Assests/AmazonShoping/2.jpg',
  //     Image3: 'Assests/AmazonShoping/3.jpg',
  //     ReferalCode:"https://m.touchcric.com/",
  //     Feacture1:" Shop On Apni Dukaan! \nAnd Get Upto 10% Return on your Order    ",
  //     Feacture2:"' Register on Amazon Pay and \n get ₹0 instant cash from our side +daily Cashback by amazon '",
  //     goto: "/Amazon"
  // ),
  // Data(
  //
  //     Companyname:"Ajio👀" ,
  //     Image1: 'Assests/Ajio/1.png',
  //     Image2: 'Assests/Ajio/2.jpg',
  //     Image3: 'Assests/Ajio/3.jpg',
  //     ReferalCode:"https://m.touchcric.com/",
  //     Feacture1:"Big Bold Sale Are Back \nAnd Get Upto 10% Return on your Order ",
  //     Feacture2:"' Register on Amazon Pay and \n get ₹40 instant cash from our side +daily Cashback by amazon '",
  //     goto: "/Ajio"
  // ),
  //
  //


];






























//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final CategoriesScroller categoriesScroller = CategoriesScroller();
//   ScrollController controller = ScrollController();
//   bool closeTopContainer = false;
//   double topContainer = 0;
//
//
//   List<Widget> itemsData = [];
//   List<String> tempArray = [];
//
//   void getPostsData() {
//     List<dynamic> responseList = FOOD_DATA;
//     List<Widget> listItems = [];
//     responseList.forEach((post) {
//       listItems.add(Container(
//           height: 200,
//           margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
//             BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
//           ]),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       post["name"],
//                       style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       post["brand"],
//                       style: const TextStyle(fontSize: 17, color: Colors.grey),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "\$ ${post["price"]}",
//                       style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//
//                     Container(
//                       height: 35,
//                       width: 85,
//                       color:tempArray.contains(FOOD_DATA [index].toString()) ? Colors.red:Colors.green,
//                      child: Center(
//                        child: CustomText(
//                             text:tempArray.contains(FOOD_DATA [index].toString()) ? "Add": "Remove",
//                             color: Colors.white,
//                             weight: FontWeight.w900,
//                             height: 1.3,
//                             fontSize:18
//                         ),
//                      ),
//                     ),
//
//
//
//                   ],
//                 ),
//                 // Image.asset(
//                 //   "assets/images/${post["image"]}",
//             Image.network("https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg",
//                   height: double.infinity,
//               // height: 140,
//               width: 90,
//                 )
//               ],
//             ),
//           )));
//     });
//     setState(() {
//       itemsData = listItems;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getPostsData();
//     controller.addListener(() {
//
//       double value = controller.offset/119;
//
//       setState(() {
//         topContainer = value;
//         closeTopContainer = controller.offset > 50;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     final double categoryHeight = size.height*0.30;
//     final int index;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.search, color: Colors.black),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.person, color: Colors.black),
//               onPressed: () {},
//             )
//           ],
//         ),
//         body: Container(
//           height: size.height,
//           child: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Text(
//                     "Loyality Cards",
//                     style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                   Text(
//                     "Menu",
//                     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               AnimatedOpacity(
//                 duration: const Duration(milliseconds: 200),
//                 opacity: closeTopContainer?0:1,
//                 child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 200),
//                     width: size.width,
//                     alignment: Alignment.topCenter,
//                     height: closeTopContainer?0:categoryHeight,
//                     child: categoriesScroller),
//               ),
//               Expanded(
//                   child: ListView.builder(
//                       controller: controller,
//                       itemCount: itemsData.length,
//                       physics: BouncingScrollPhysics(),
//                       itemBuilder: (context, index) {
//                         double scale = 1.0;
//                         if (topContainer > 0.5) {
//                           scale = index + 0.5 - topContainer;
//                           if (scale < 0) {
//                             scale = 0;
//                           } else if (scale > 1) {
//                             scale = 1;
//                           }
//                         }
//                         return InkWell(
//
//
//                           onTap: (){
//                             setState((){
//                               if(tempArray.contains(FOOD_DATA [index].toString())){
//                                 tempArray.remove(FOOD_DATA [index].toString());
//                               }else{
//                                 tempArray.add(FOOD_DATA [index].toString());
//                               }
//                             });
//
//                             print("myvalue");
//                             print(tempArray.toString());
//
//                           },
//
//
//                           child: Opacity(
//                             opacity: scale,
//                             child: Transform(
//                               transform:  Matrix4.identity()..scale(scale,scale),
//                               alignment: Alignment.bottomCenter,
//                               child: Align(
//                                   heightFactor: 0.7,
//                                   alignment: Alignment.topCenter,
//                                   child: itemsData[index]),
//                             ),
//                           ),
//                         );
//                       })),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CategoriesScroller extends StatelessWidget {
//   const CategoriesScroller();
//
//   @override
//   Widget build(BuildContext context) {
//     final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
//     return SingleChildScrollView(
//       physics: BouncingScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//         child: FittedBox(
//           fit: BoxFit.fill,
//           alignment: Alignment.topCenter,
//           child: Row(
//             children: <Widget>[
//               Container(
//                 width: 150,
//                 margin: EdgeInsets.only(right: 20),
//                 height: categoryHeight,
//                 decoration: BoxDecoration(color: Colors.orange.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "Most\nFavorites",
//                         style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "20 Items",
//                         style: TextStyle(fontSize: 16, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 150,
//                 margin: EdgeInsets.only(right: 20),
//                 height: categoryHeight,
//                 decoration: BoxDecoration(color: Colors.blue.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           "Newest",
//                           style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "20 Items",
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 150,
//                 margin: EdgeInsets.only(right: 20),
//                 height: categoryHeight,
//                 decoration: BoxDecoration(color: Colors.lightBlueAccent.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "Super\nSaving",
//                         style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "20 Items",
//                         style: TextStyle(fontSize: 16, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// const FOOD_DATA = [
//   {
//     "name":"Burger",
//     "brand":"Hawkers",
//     "price":2.99,
//     "image":"burger.png"
//   },{
//     "name":"Cheese Dip",
//     "brand":"Hawkers",
//     "price":4.99,
//     "image":"cheese_dip.png"
//   },
//   {
//     "name":"Cola",
//     "brand":"Mcdonald",
//     "price":1.49,
//     "image":"cola.png"
//   },
//   {
//     "name":"Fries",
//     "brand":"Mcdonald",
//     "price":2.99,
//     "image":"fries.png"
//   },
//   {
//     "name":"Ice Cream",
//     "brand":"Ben & Jerry's",
//     "price":9.49,
//     "image":"ice_cream.png"
//   },
//   {
//     "name":"Noodles",
//     "brand":"Hawkers",
//     "price":4.49,
//     "image":"noodles.png"
//   },
//   {
//     "name":"Pizza",
//     "brand":"Dominos",
//     "price":17.99,
//     "image":"pizza.png"
//   },
//   {
//     "name":"Sandwich",
//     "brand":"Hawkers",
//     "price":2.99,
//     "image":"sandwich.png"
//   },
//   {
//     "name":"Wrap",
//     "brand":"Subway",
//     "price":6.99,
//     "image":"wrap.png"
//   }
// ];
