import 'package:ecommerce/page/home.page.dart';
import 'package:ecommerce/page/signup.page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 80,
            right: 20,
            bottom: 40,
            left: 20,
          ),
          color: Color(0xFFF5F5F5),
          child: Column(
            children: [
              Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                    top: 60,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                'Sign in to continue',
                              ),
                            ],
                          ),
                          FlatButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.green[400],
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 40,
                        child: FlatButton(
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.green[400],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5,
                            ),
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                child: Text(
                  '- OR -',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.green[400],
                  ),
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset('assets/facebook.png'),
                      ),
                      Text('Sign in with Facebook')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.green[400],
                  ),
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset('assets/google.png'),
                      ),
                      Text('Sign in with Google')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
