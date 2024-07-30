import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.lightBlue[10],
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcom",
                      style: TextStyle(
                        fontFamily: "Courgette",
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 288,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 10)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/Signup");
                        },
                        child: Text(
                          "Sinup",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        )),
                    SizedBox(
                      height: 140,
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: 130,
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child:
                      Image.asset("assets/images/main_bottom.png", width: 130)),
            ],
          ),
        ),
      ),
    );
  }
}
