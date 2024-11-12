// ignore_for_file: camel_case_types, unused_local_variable, unused_import, body_might_complete_normally_nullable, avoid_print

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:auth/models/movie_model.dart';
import 'package:flutter/material.dart';

import '../homepage/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:login_and_signup/screens/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();

  // Future signin() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim());
  // }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
  }

  bool hideloginpassword = true;
  GlobalKey<FormState> formstate = GlobalKey();
  List<MovieModel> movies = [];
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/rip gaybuckybarnes again.gif"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formstate,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   "assets/image.png",
                    //   width: screenwidth * 0.9,
                    //   height: screenHight * 0.2,
                    // ),
                    SizedBox(
                      height: screenHight * 0.2,
                    ),
                    const Text("sign in",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const Text("welcom! nice to see you",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: screenHight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return " field is empty ";
                              }
                            },
                            controller: _emailController,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              hintText: "E-mail",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey[400],
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return " field is empty ";
                              }
                            },
                            controller: _passwordController,
                            obscureText: hideloginpassword,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              hintText: "password",
                              suffixIcon: GestureDetector(
                                  onTap: toggleloginpassword,
                                  child: Icon(
                                      hideloginpassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.grey[400])),
                              prefixIcon:
                                  Icon(Icons.key, color: Colors.grey[400]),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          if (formstate.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const home_page();
                              }),
                            );
                          } else {
                            print(" field is empty ");
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                              child: Text(
                            "sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not yet a member? ",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) {
                          //       return const signup();
                          //     }),
                          //   );
                          // },
                          child: const Text(
                            "signup now",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHight * 0.05,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void toggleloginpassword() {
    setState(() {
      hideloginpassword = !hideloginpassword;
    });
  }
}
