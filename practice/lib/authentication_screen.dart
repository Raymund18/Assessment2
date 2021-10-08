import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/login_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -40,
            left: -40,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFA603B),
              minRadius: 120,
            ),
          ),
          Positioned(
            top: -40,
            right: -40,
            child: CircleAvatar(
              backgroundColor: Color(0xFF17A5B0),
              minRadius: 120,
            ),
          ),
          Positioned(
            top: 120,
            right: -40,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF8FAFD),
              minRadius: 120,
            ),
          ),
          Positioned(
            top: 120,
            left: -40,
            child: CircleAvatar(
              backgroundColor: Color(0xFF111747),
              minRadius: 120,
            ),
          ),
          Positioned(
            top: -20,
            left: 70,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF2C94C), //Dark Blue
              minRadius: 120,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 85, horizontal: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        child: Text('Login', style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFA603B)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        child: Text('Sign Up', style: TextStyle(fontSize: 20)),
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10)),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFA603B)),
                        ),
                        onPressed: () {
                          print('Signing Up');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
