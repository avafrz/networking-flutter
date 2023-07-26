import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  
  String labelText;
  String hintText;

  TextFieldWidget(this.labelText, this.hintText,this.controller);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15,top: 12,),
      child: TextField(
        controller:controller,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Colors.orange,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Colors.orange,
            ),
          ),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
