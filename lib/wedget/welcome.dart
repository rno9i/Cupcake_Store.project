import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/screen/HomeScreen.dart';
import 'package:flutter_application_6/screen/login.dart';
import 'package:flutter_application_6/screen/new%20log.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(222, 6, 5, 7),
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.end,
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                  "assets/WhatsApp Image 2024-08-06 at 7.03.25 PM (1).jpeg",
                  height: 250,
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Newlogin()));
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 179, 253, 0.934),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black26),
                      ]),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New login",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(176, 6, 5, 7),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Icon(
                          Icons.login,
                          color: Color.fromARGB(176, 6, 5, 7),
                        ),
                      ]))),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
                width: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 179, 253, 0.934),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black26),
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(176, 6, 5, 7),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                              width: 30,
                            ),
                            Icon(
                              Icons.login,
                              color: Color.fromARGB(176, 6, 5, 7),
                            ),
                          ]))),
            ],
          )
        ],
      ),
    );
  }
}
