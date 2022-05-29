// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retaurant/Elements/TextForm.dart';

class RegisterForm extends StatefulWidget {


  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final UserIDController= TextEditingController();

  final UserNameController= TextEditingController();
  final EmailController= TextEditingController();
  final PassController= TextEditingController();
  final ConfirmPassController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),

                Text('Register' ,
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
                SizedBox(height: 6.0,),

                TextForm(hint: 'User ID',
                iconData: Icons.person,
                obscureText: false,
                controller: UserIDController),

                SizedBox(height: 4.0,),
                TextForm(hint: 'User Name',
                  iconData: Icons.person_pin_outlined,
                  obscureText: false,
                  textInputType: TextInputType.name,
                  controller: UserNameController),
                SizedBox(height: 4.0,),
                TextForm(hint: 'Email',
                  iconData: Icons.email,
                  obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  controller: EmailController),
                SizedBox(height: 4.0,),
                TextForm(hint: 'Password',
                  iconData: Icons.lock,
                  obscureText: true,

                  controller: PassController),
                SizedBox(height: 4.0,),
                TextForm(hint: 'Confirm Password',
                  iconData: Icons.lock_outline,
                  obscureText: true,
                  controller: ConfirmPassController),
                SizedBox(height: 4.0,),

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
                      Text(' Does you have  Account ?') ,
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Login' ),
                        onPressed: (){

                          Navigator.pushReplacementNamed(context, '/Login');
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
