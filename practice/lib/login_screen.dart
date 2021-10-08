import 'package:flutter/material.dart';
import 'package:practice/dashboard.dart';
import 'package:practice/authentication_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 85, horizontal: 25),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Welcome \nBack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xFF4E5CA3),
                filled: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xFF4E5CA3),
                filled: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: double.infinity,
              child: GestureDetector(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => print('Forgot password button was clicked!'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all((Color(0xFFFA603B)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
