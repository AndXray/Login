import 'package:flutter/material.dart';
import 'package:applogin/sign/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(

          children: [
             SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Регистрация",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Пожалуйста, введите свой адрес электронной почты и придумайте пароль",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:[ BoxShadow(
                              blurRadius: 10,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)

                          )]
                      ),

                      child: TextField(
                        autofocus: true,
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email,color: Colors.deepPurple,),
                            hintText: "Электронная почта",

                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      )),
                  SizedBox(height: 15,),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow:[ BoxShadow(
                              blurRadius: 10,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.5)

                          )]
                      ),

                      child: TextField(
                        autofocus: true,
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Пароль",
                            prefixIcon: Icon(Icons.password,color: Colors.deepPurple,),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      )),
                  SizedBox(height: 15,),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                AuthController.instance.register(emailController.text.trim(),
                    passwordController.text.trim());
              },
              child: Container(
                width: 220,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(25),
                  // image: DecorationImage(
                  //   image: AssetImage("img/button.png"),
                  //   fit: BoxFit.cover,
                  // )
                ),
                child:  const Center(
                  child: Text("зарегестрироваться",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                )
            )
            )

            //SizedBox(height: w*0.08,),
            // RichText(text: TextSpan(
            //     text: "Еще нет аккаунта? ",
            //     style: TextStyle(
            //         color: Colors.grey,
            //         fontSize: 20
            //     ),
            //     children: [
            //       TextSpan(
            //         text: "Создать!",
            //         style: TextStyle(
            //             color: Colors.black87,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20
            //         ),)
            //     ]
            // ),
            // )
          ],
        )
    );
  }
}
