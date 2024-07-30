import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

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
                        "Sign up",
                        style: TextStyle(
                          fontFamily: "Courgette",
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        width: 200,
                      ),
                      SizedBox(
                        height: 30,
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
                              label: Text("Username"),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 7,
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
                                Icons.email,
                                color: Colors.purple[800],
                              ),
                              label: Text("Email"),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 7,
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
                            "SignUp",
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
                          Text("Already Have An Account ? "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signin");
                              },
                              child: Text(
                                " Login",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              indent: 30,
                              endIndent: 10,
                            ),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 30,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  color: Colors.deepPurple,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  color: Colors.deepPurple,
                                  width: 30,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  width: 30,
                                  color: Colors.deepPurple,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/signup_top.png",
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
