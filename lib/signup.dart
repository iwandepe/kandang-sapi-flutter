import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Container(
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
                      // Name edit text
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: _nameController,
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                          decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.grey)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            return null;
                          },
                        ),
                      ),

                      // Email edit text
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: _emailController,
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                          decoration: InputDecoration(
                              labelText: 'Email',
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
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: _passwordController,
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
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

                      // Confirm password edit text
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          controller: _confirmPassController,
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                          decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: Colors.grey)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            return null;
                          },
                        ),
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
                    'Already have an account? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Theme.of(context).buttonColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
