

import 'dart:ui' as ui;
import 'package:billingo/custome%20text.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
//
// void main() {
//   return runApp(SignaturePadApp());
// }
//
// ///Renders the SignaturePad widget.
// class SignaturePadApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SfSignaturePad Demo',
//       home: _MyHomePage(),
//     );
//   }
// }



class Signature extends StatefulWidget {
  const Signature({Key? key}) : super(key: key);

  @override
  State<Signature> createState() => _SignatureState();
}

class _SignatureState extends State<Signature> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  void _handleSaveButtonPressed() async {
    final data =
    await signatureGlobalKey.currentState!.toImage(pixelRatio: 3.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
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
                text: "Save Image Preview",
                color: AppColors.kPrimaryDark,
                fontSize: 22,
                weight: FontWeight.w700,
              ),
            ),

            body: Center(
              child: Container(
                color: Colors.grey[300],
                child: Image.memory(bytes!.buffer.asUint8List()),
              ),
            ),
          );
        },
      ),
    );
  }

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
            text: "Signature",
            color: AppColors.kPrimaryDark,
            fontSize: 22,
            weight: FontWeight.w700,
          ),
        ),


        body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(

                      decoration:
                      BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(50.0)),

                          color: Colors.red),

                      child: SfSignaturePad(
                          key: signatureGlobalKey,
                          backgroundColor: Colors.yellow,
                          strokeColor: Colors.red,
                          minimumStrokeWidth: 2.0,
                          maximumStrokeWidth: 4.0),
                    )),
              SizedBox(height: 10),
              Row(children: <Widget>[



                CustomBtn(
                  color: Colors.black,
                  label: "SAve Image",
                  textColor: Colors.tealAccent,
                  action:

                    _handleSaveButtonPressed,

                ),
                CustomBtn(
                    color: Colors.black,
                  label: "Clear",
                    textColor: Colors.tealAccent,
                  action:
    _handleClearButtonPressed


                ),

                //
                // TextButton(
                //   child: Text('ToImage'),
                //   onPressed: _handleSaveButtonPressed,
                // ),
                // TextButton(
                //   child: Text('Clear'),
                //   onPressed: _handleClearButtonPressed,
                // )
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center));
  }
}





























































// import 'dart:typed_data';
//
// import 'package:billingo/custome%20text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:signature/signature.dart';
//
//
//  SignatureController controller = SignatureController(
//   penStrokeWidth: 1,
//   penColor: Colors.red,
//   exportBackgroundColor: Colors.blue,
//   exportPenColor: Colors.black,
//   onDrawStart: () => print('onDrawStart called!'),
//   onDrawEnd: () => print('onDrawEnd called!'),
// );
//
//
// class Signature extends StatefulWidget {
//   const Signature({Key? key,  }) : super(key: key);
//
//   @override
//   State<Signature> createState() => _SignatureState();
// }
//
// class _SignatureState extends State<Signature> {
//
//
//
//
//
//   // void initState(){
//   //   super.initState();
//   //
//
//
//
//
//
//   // final  SignatureController _controller = SignatureController(
//   //  penStrokeWidth: 5,
//   //  penColor: Colors.red,
//   //  exportBackgroundColor: Colors.blue,
// //   );
// // }
//
//
//
// @override
//   // Uint8List? exportedImage;
//
//
//
// void initState() {
//   super.initState();
//   controller.addListener(() => print('Value changed'));
// }
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         automaticallyImplyLeading: false,
//         leading:  IconButton(
//         onPressed: () {
//       Navigator.pop(context);
//     },
//     icon: Icon(
//     Icons.arrow_back_ios,
//     size: 24,
//     ),
//     color: AppColors.kPrimaryDark,
//     splashRadius: 1,
//     ),
//
//     elevation: 0,
//     backgroundColor: Colors.white,
//     title: CustomText(
//     text: "Payment Information",
//     color: AppColors.kPrimaryDark,
//     fontSize: 22,
//     weight: FontWeight.w700,
//     ),
//     ),
//
//     body:
//
//
//
//     ListView(
//       children: <Widget>[
//         Container(
//           height: 300,
//           child: const Center(
//             child: Text('Big container to test scrolling issues'),
//           ),
//         ),
//         //SIGNATURE CANVAS
//         Row(
//           children: [
//             Expanded(child: Text("Citizen Signature")),
//             Flexible(
//                 flex: 2,
//                 child: Signature(
//                   controller: SignatureController(
//                     penStrokeWidth: 5,
//                     penColor: Colors.black,
//                     exportBackgroundColor: Colors.blue,
//                   ),
//                   // height: 300,
//                   // backgroundColor: Colors.grey[300]!,
//                 ))
//           ],
//         ),
//         // Signature(
//         //   controller: _controller,
//         //   height: 300,
//         //   backgroundColor: Colors.lightBlueAccent,
//         // ),
//         //OK AND CLEAR BUTTONS
//         Container(
//           decoration: const BoxDecoration(color: Colors.black),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               //SHOW EXPORTED IMAGE IN NEW ROUTE
//               IconButton(
//                 icon: const Icon(Icons.check),
//                 color: Colors.blue,
//                 onPressed: () async {
//                   if (controller.isNotEmpty) {
//                     final Uint8List? data =
//                     await controller.toPngBytes();
//                     if (data != null) {
//                       await Navigator.of(context).push(
//                         MaterialPageRoute<void>(
//                           builder: (BuildContext context) {
//                             return Scaffold(
//                               appBar: AppBar(),
//                               body: Center(
//                                 child: Container(
//                                   color: Colors.grey[300],
//                                   child: Image.memory(data),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       );
//                     }
//                   }
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.undo),
//                 color: Colors.blue,
//                 onPressed: () {
//                   setState(() => controller.undo());
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.redo),
//                 color: Colors.blue,
//                 onPressed: () {
//                   setState(() => controller.redo());
//                 },
//               ),
//               //CLEAR CANVAS
//               IconButton(
//                 icon: const Icon(Icons.clear),
//                 color: Colors.blue,
//                 onPressed: () {
//                   setState(() => controller.clear());
//                 },
//               ),
//             ],
//           ),
//         ),
//         Container(
//           height: 300,
//           child: const Center(
//             child: Text('Big container to test scrolling issues'),
//           ),
//         ),
//       ],
//     ),
//
//
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //
// //
// //     Center(
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Container(
// //             height: 200,
// //
// //             child: Signature(
// //                 controller : _controller,
// //                 // SignatureController(
// //               width: 350,
// //               height: 200,
// //               backgroundColor: Colors.lightBlue[100]!,
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Row(
// //               mainAxisSize: MainAxisSize.min,
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Padding(
// //                     padding: EdgeInsets.all(10),
// //                     child: ElevatedButton(
// //                         onPressed: () async {
// //                           exportedImage = await _controller.toPngBytes();
// //                           //API
// //                           setState(() {});
// //                         },
// //                         child: const Text(
// //                           "Save",
// //                           style: TextStyle(fontSize: 20),
// //                         ),
// //                         style: ButtonStyle(
// //                             backgroundColor:
// //                             MaterialStateProperty.all<Color>(Colors.red),
// //                             shape: MaterialStateProperty.all<
// //                                 RoundedRectangleBorder>(
// //                                 RoundedRectangleBorder(
// //                                     borderRadius: BorderRadius.circular(18.0),
// //                                     side: BorderSide(color: Colors.red)))))),
// //                 Padding(
// //                     padding: EdgeInsets.all(10),
// //                     child: ElevatedButton(
// //                         onPressed: () {
// //                           controller.clear();
// //                         },
// //                         child: const Text(
// //                           "Clear",
// //                           style: TextStyle(fontSize: 20),
// //                         ),
// //                         style: ButtonStyle(
// //                             backgroundColor:
// //                             MaterialStateProperty.all<Color>(Colors.blue),
// //                             shape: MaterialStateProperty.all<
// //                                 RoundedRectangleBorder>(
// //                                 RoundedRectangleBorder(
// //                                     borderRadius: BorderRadius.circular(18.0),
// //                                     side: BorderSide(color: Colors.red)))))),
// //               ],
// //             ),
// //             SizedBox(
// //               height: 10,
// //             ),
// //
// //           )if (exportedImage != null)
// //             Image.memory(
// //               exportedImage!,
// //               width: 300,
// //               height: 250,
// //             )
// //         ],
// //       ),
// //     ),
// //     );
// //   }
// // }
//
