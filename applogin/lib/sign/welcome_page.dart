import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'auth_controller.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,

        body: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/LoginImg.png"),
                    fit: BoxFit.cover,
                  )
              ),
            ),

                GestureDetector(
                  onTap: (){
                    AuthController.instance.logOut();
                  },
                  child: Container(
                        width: 220,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(25),
                          // image: DecorationImage(
                          //   image: AssetImage("img/button.png"),
                          //   fit: BoxFit.cover,
                          // )
                        ),
                        child:  const Center(
                          child: Text("Выйти",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        )
                    ))


          ],
        ));
  }
}
