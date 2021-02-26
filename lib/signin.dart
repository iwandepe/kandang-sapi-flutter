import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(360))),
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Header text big Welcome back
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome\nBack",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  // Wrap form input and sign in button
                  Container(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Username edit text
                          Container(
                            padding: EdgeInsets.only(bottom: 35),
                            child: TextFormField(
                              controller: _usernameController,
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor),
                              decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(color: Colors.grey)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'This field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),

                          // Password edit text
                          Container(
                            padding: EdgeInsets.only(bottom: 25),
                            child: TextFormField(
                              controller: _passwordController,
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor),
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'This field cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),

                          // Forgot password text link
                          Container(
                            padding: EdgeInsets.only(bottom: 25),
                            alignment: Alignment.centerRight,
                            child: InkWell(
                                child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor),
                            )),
                          ),

                          // Signin button
                          FlatButton(
                            child: Text('SIGN IN'),
                            onPressed: () {
                              print('Signin button pressed');
                            },
                            color: Theme.of(context).buttonColor,
                            minWidth: double.infinity,
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90)),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Signup if dont have account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      InkWell(
                        child: Text(
                          'SIGN UP',
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
