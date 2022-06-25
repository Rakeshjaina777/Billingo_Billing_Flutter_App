import 'dart:ffi';

import 'package:billingo/ItemListchoose.dart';
import 'package:billingo/custome%20text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// List<int> Pric= [1,2,3];
late num Total;
class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);




  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {


   // var sum = Price.fold(0, (var sum, var item) => item+ sum!);

  void summ() {


    num
    sum =
    Price.fold(0, (sum, item) => sum + item);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState(

    );

    setState(() {

    });

Total=sum/4;
print(sum);
print("ggggggggggggggggggggggggggggggg");

  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
        appBar:


        AppBar(


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
            text: "Add Item To List",
            color: AppColors.kPrimaryDark,
            fontSize: 22,
            weight: FontWeight.w700,
          ),
        ),


        body:   Material(
          child: SingleChildScrollView(
              child: Column(
                children: [
                tempArray.isEmpty? SizedBox(

                  height: 450,
                child:  Column(
                    children: [
                      Image.asset(
                        "assets/icons/322b0dd9-c7c2-4458-a629-41598d1d804c.jpg",
                        // Image.network('https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg',
                        height: 370,




                        // color: Colors.white,
                      ),

                      CustomText(
                          text: "Please Add item to Carts",
                          color: Colors.black,
                          weight: FontWeight.w700,
                          height: 1.3,
                          fontSize:22,
                          align:TextAlign.start
                      ),
                    ],
                  )

                ):  SizedBox(
                    // height:  760,
                    child: ListView.builder(
                      shrinkWrap: true,
                      // controller: controller,

                        itemCount: tempArray.length,
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
                          return
                            // InkWell(
                            //
                            //
                            // onTap: (){
                            // setState((){
                            // if(tempArray.contains(FOOD_DATA [index].name)){
                            // tempArray.remove(FOOD_DATA [index].name);
                            // tempArray.remove(FOOD_DATA[index].price);
                            // }else{
                            // tempArray.add(FOOD_DATA[index].name);
                            // tempArray.add(FOOD_DATA[index].price);
                            // }
                            // });
                            //
                            // print("myvalue");
                            // print(tempArray.toString());
                            //
                            // },


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

                            Container(
                              height: 140,
                              // width: 75,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          tempArray[index],
                                          style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                                        ),



                                        // Container(
                                        // height: 35,
                                        // width: 85,
                                        // color:tempArray.contains(FOOD_DATA [index].name) ? Colors.red:Colors.green,
                                        // child: Center(
                                        // child: CustomText(
                                        // text:tempArray.contains(FOOD_DATA [index].name) ? "Add": "Remove",
                                        // color: Colors.white,
                                        // weight: FontWeight.w900,
                                        // height: 1.3,
                                        // fontSize:18
                                        // ),
                                        // ),
                                        // ),

                                        Image.asset(Catalog[index],
                                          // height: double.infinity,
                                          height: 94,
                                          width: 120,
                                        )

                                      ],
                                    ),
                                    // Image.asset(
                                    //   "assets/images/${post["image"]}",

                                    SizedBox(
                                      width: 65,
                                    ),

                                    Text(
                                      "\$ ${Price[index]}",
                                      style: const TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
                                    ),


                                  ],
                                ),
                              ),
                            );
                        }

                    ),
                  ),


                  Divider(
                    height: 5,
                    thickness: 2,

                    color: Colors.deepPurple,
                  ),

                  SizedBox(
                    height: 15,
                  ),



                  Row(
                      children: [



                        tempArray.isEmpty?  SizedBox(
                          height: 23,
                        ):

                        CustomText(
                            text: "Total Charges :$sum" ,
                            color: Colors.black,
                            weight: FontWeight.w900,
                            height: 1.3,
                            fontSize:25,
                            align:TextAlign.start
                        ),


                      ]
                  ),


                  Container(
                    height: 150,
                    child:
                      (
                     // Text("$sum/4")
                          CustomText(


                            text: "$Total",
                          )
                    )

                  ),

                  //
                  // CustomBtn(
                  //     color: Colors.teal[400],
                  //     label: "Save",
                  //     action: (){
                  //       setState(() {});
                  //     })


                ],
              )


          ),
        ),


        
        
        
        floatingActionButton: FloatingActionButton(

          onPressed:()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> ItemlistSelect())).then((value){

              setState(() {});

            }
            );
          },
          foregroundColor: Colors.black,
          backgroundColor: Colors.deepPurple,
          tooltip: 'Increment',
          child: const Icon(Icons.add,size: 39,),    )

    );
  }
}
