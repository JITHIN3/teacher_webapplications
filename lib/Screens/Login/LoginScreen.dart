import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Preferances/preferances.dart';
import 'package:teacher_webapplication/Screens/Deviceinfo.dart';
import 'package:http/http.dart' as http;
import 'package:teacher_webapplication/Screens/Login/LoginModel.dart';
import 'package:teacher_webapplication/Screens/homepage.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {

  late LoginModel loginModel;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: Helper.getScreenWidth(context),
                      color: Colors.white,
                      height: Helper.getScreenHeight(context),
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          Text("EDUCATION ERP",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontFamily: "Hind")),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: TextFormField(
                                              controller: emailController,
                                              onSaved: (input)=>loginModel.data =input as Data?,
                                              decoration: InputDecoration(
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  border: InputBorder.none)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 300,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Password",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                                Text("Forgot Password?",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.blue)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: TextFormField(controller: passwordController,
                                                onSaved:  (input)=>loginModel.data =input as Data?,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    border: InputBorder.none)),
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  child: ElevatedButton(
                                    child: Text('Sign in'),
                                    onPressed: () {

                                      if (emailController.text.length > 0) {
                                        if (passwordController.text.length > 0) {
                                          Login(emailController.text, passwordController.text);
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                                duration: Duration(seconds: 1),
                                                backgroundColor: Colors.blueAccent,
                                                content: Text("Enter Password")),
                                          );
                                        }
                                      }else {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                              duration: Duration(seconds: 1),
                                              backgroundColor: Colors.blueAccent,
                                              content: Text("Enter Username")),
                                        );
                                      }


                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.blueGrey.shade800,
                                        textStyle: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: Helper.getScreenWidth(context),
                      color: Colors.blue.shade200,
                      height: Helper.getScreenHeight(context),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Login(String email, String password) async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://educationerp.in/IES/index.php/m_api/teacher_c/login"),
          headers: {
            "Cookie":
                "ci_session=a%3A5%3A%7Bs%3A10%3A%22session_id%22%3Bs%3A32%3A%22fe233291ac22a188c27fb91e6774f3ba%22%3Bs%3A10%3A%22ip_address%22%3Bs%3A7%3A%220.0.0.0%22%3Bs%3A10%3A%22user_agent%22%3Bs%3A21%3A%22PostmanRuntime%2F7.29.2%22%3Bs%3A13%3A%22last_activity%22%3Bi%3A1663769498%3Bs%3A9%3A%22user_data%22%3Bs%3A0%3A%22%22%3B%7D395c3fb2ed3fed9d906ff1113a01665d"
          },
          body: {
            "username": email,
            "password": password
          });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        final resdata = data['data'];
        final tokendata = resdata['token'];
        print("resdata: $resdata");
        print("tokendata: ${resdata['token']}");
        Preferances().saveToken(tokendata);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(seconds: 1),
            backgroundColor: Colors.green,
            content: Text("Login Successfully")));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        print(response.body.toString());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              duration: Duration(seconds: 1),
              backgroundColor: Colors.red,
              content: Text("Incorrect Username/Password")),
        );
      }

      return data;
    }
  }
}
