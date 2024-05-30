import 'package:flutter/material.dart';
import 'package:flutter_getx/home.dart';
import 'package:get/get.dart';



class Navigationn extends StatelessWidget {
  const Navigationn({super.key});

  @override

  Widget build(BuildContext context){

    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Menu and Routing"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton( 
              child: Text("Go to Home"),
              onPressed: () async {
                // Get.to(
                //    Home(),
                //    //to make the screen full dialog
                //    fullscreenDialog: true,

                //    //to provide animations
                //    transition: Transition.zoom,

                //    //Duration for transition animations
                //    duration: Duration(milliseconds: 4000),

                //   //curve in animation
                //    curve: Curves.bounceInOut,
                // );

                //go to home screen but no option to return to previous screen
                //Get.off(Home());
                //Go to home screen and cancel all previous screens/routes
                //Get.offAll(Home());
                //Go to next screen with some data
                //Get.to(Home(), arguments: "Data from Main");
                //Go to next screen and recieve data sent from home screen
                var data=await Get.to(Home());
                 print("The Received data is $data");

              },)
            ],
          ),
        ),
      ),
    );
  }
}