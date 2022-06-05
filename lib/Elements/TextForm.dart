// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class TextForm extends StatelessWidget {
  TextEditingController  controller;
   String hint;
  IconData iconData;
  bool obscureText;

  TextInputType textInputType;


  TextForm({ required this.controller,
   required this.hint,
   required this.iconData,
   required this.obscureText,
  this.textInputType = TextInputType.text});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.0),

      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: (val){

          if(val ==null || val.isEmpty){
            return "please enter $hint";
          }
          return null;
        },
        onSaved: (value) => controller.text=value!,
        keyboardType: textInputType,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                borderSide: BorderSide(color: Colors.transparent)

            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                borderSide: BorderSide(color: Colors.blue)
            ),
            hintText: hint,
            filled: true,
            fillColor: Colors.grey[200],
            prefixIcon: Icon( iconData)
        ),
      ),
    );
  }
}
