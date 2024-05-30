import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Dialogg extends StatelessWidget {
  @override

  const Dialogg({super.key});

  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog Title"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: (){
                //Get.defaultDialog();
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: TextStyle(fontSize: 25, color: Colors.white),
                  middleText: "This is middle text",
                  middleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
                  backgroundColor: Colors.blue,
                  radius: 80,

                  //to customize the middle text
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),

                      Expanded(child: Text("Data loading"),
                      )
                    ],
                  ),

                  //Default cancel and confirm action

                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onCancel: () {
                    
                  },

                  onConfirm: () {
                    
                  },

                  //color for default cancel and confirm

                  buttonColor: Colors.green,

                  cancel: Text(
                    "Cancels",
                    style: TextStyle(color: Colors.white),
                  ),

                   confirm: Text(
                    "Confirms",
                    style: TextStyle(color: Colors.white),
                  ),

                  actions: [
                    ElevatedButton(onPressed: (){
                      Get.back();
                    },
                    child: Text("Action-1")),

                    ElevatedButton(onPressed: (){
                     
                    },
                    child: Text("Action-2")),
                  ],
                  barrierDismissible: true,

                );
              }, 
              child: Text("Show Dialog"))
            ],
          ),
        ),
        ),
    );
  }
}