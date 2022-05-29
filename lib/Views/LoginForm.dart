// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retaurant/Elements/TextForm.dart';


class LoginForm extends StatefulWidget {


  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final UserIdController= TextEditingController();
  final PasswordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),

                Text('Login' ,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
                SizedBox(height: 10),
                Image.asset('images/login2.jpg',
                  height: 150.0 ,
                  width: 150.0,),
                SizedBox(height: 10),
                Text('Moufed Dibou' ,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38
                  ),
                ),
                SizedBox(height: 15.0),
                TextForm(hint: 'User ID',
                  iconData: Icons.person,
                  obscureText: false,
                  controller: UserIdController,),
                SizedBox(height: 10.0),
                TextForm(hint: 'Password',
                  iconData: Icons.lock,
                  obscureText: true,
                  controller: PasswordController,),

                Container(
                  margin: EdgeInsets.all(25.0),
                  width: double.infinity,
                  child: FlatButton(
                    child: Text('Login' ,
                      style: TextStyle(
                      color: Colors.white,
                        fontSize: 30,
                    ),
                    ),
                    onPressed: () {} ,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,

                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' Do not Have Account ?') ,
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Sign Up' ),
                        onPressed: (){

                          Navigator.pushReplacementNamed(context, '/Register');
                        },
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
