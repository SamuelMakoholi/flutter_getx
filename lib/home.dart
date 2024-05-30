import 'package:flutter/material.dart';
import 'package:flutter_getx/navigationn.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This is Home Screen",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30,
            ),
            ),
            SizedBox(height: 8.0,),
            ElevatedButton(
            child: Text(
              "Next Screen",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: (){},
            ),

            SizedBox(height: 8.0,),

            ElevatedButton(
            child: Text(
              "Go Back",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: (){
               // Get.back();

               Get.back(result: 'This is from Home Screen');
            },
            ),

            SizedBox(height: 8,),

            // Text(
            //   "${Get.arguments}",
            //   style: TextStyle(color: Colors.green, fontSize: 20),
            // )


          ],
        ),
      ),
    );
  }
}