import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SnackBarr extends StatelessWidget {
  const SnackBarr({super.key});

  @override

  Widget build(BuildContext context) {
     return GetMaterialApp(
      title: "Snack Bar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("WELCOME BACK!!"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.snackbar(
                  "Hello Leaner", 
                  "Keep on learning the Flutter the Good Way",
                  snackPosition: SnackPosition.BOTTOM,
                  //titleText: Text("The Second Version"),
                  // messageText: Text(
                  //   "Another Text",
                  //   style: TextStyle(color: Colors.amber),
                  // )
                  colorText: const Color.fromARGB(255, 245, 243, 243),
                  backgroundColor: Color.fromARGB(255, 103, 6, 230),
                  borderRadius: 30,
                  margin: EdgeInsets.all(10),
                  // maxWidth: 100,
                  //animationDuration: Duration(microseconds: 3000),
                  backgroundGradient: LinearGradient(colors: [
                    Colors.red, Colors.green
                  ]),
                  borderColor: Colors.purple,
                  borderWidth: 4,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(30,30),
                      spreadRadius: 20,
                      blurRadius: 9
                    )
                  ],
                  isDismissible: true,
                 //dismissDirection: SnackDismissDirection.HORIZONTA,
                 forwardAnimationCurve: Curves.bounceInOut,
                // duration: Duration(microseconds: 8000),
                 icon: Icon(
                  Icons.send,
                  color: Colors.white,
                 ),
                 shouldIconPulse: false,
                 leftBarIndicatorColor: Colors.white,
                 mainButton: TextButton(
                  child: Text("Retry"),
                  onPressed: (){},
                 ),
                 onTap: (val) {
                  print("Snackbar Clicked");
                 },

                 overlayBlur: 5,
                 //overlayColor: Colors.grey,
                 padding: EdgeInsets.all(50),
                 showProgressIndicator: true,
                 progressIndicatorBackgroundColor: Colors.deepOrange,
                 progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
                 reverseAnimationCurve: Curves.bounceInOut,
                 snackbarStatus: (val) {
                  print(val);
                 },

                //  userInputForm: Form(
                //   child: Row(
                //     children: [
                //       Expanded(child: TextField(),
                //       )
                //     ],

                //   ))

                  );
              },
              child: Text("Snack Bar"),)
            ],
          ),
        ),
      ),

    );
  }
}