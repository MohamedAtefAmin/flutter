import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Singin extends StatelessWidget {
  const Singin({super.key});

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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "Courgette",
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 288,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffF0E6FF),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              label: Text("Email"),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffF0E6FF),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              label: Text("Password"),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.deepPurple),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 10)),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have An Account ? "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/Signup");
                              },
                              child: Text(
                                " Singup",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ],
                  ),
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
                  right: 0,
                  child: Image.asset("assets/images/login_bottom.png",
                      width: 130)),
            ],
          ),
        ),
      ),
    );
  }
}
