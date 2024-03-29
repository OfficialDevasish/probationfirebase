import 'package:flutter/material.dart';

import '../auth_service.dart';

class loginpage extends StatefulWidget {


  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  @override

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Google Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20, right: 20, top: size.height * 0.2, bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Hello, \nGoogle sign in",
                style: TextStyle(
                    fontSize: 30
                )),
            Container(
              child: GestureDetector(
                  onTap: () {
                    AuthService().signInWithGoogle();
                  },

                  child: const Image(width: 180,height: 60, image: AssetImage('assets/unnamed.png'))),
            ),

          ],
        ),

      ),
    );
  }
}