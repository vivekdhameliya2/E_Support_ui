import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final Icon icon;
  final title;

  const FormInput({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
        child: Theme(
          data: ThemeData(primaryColor: Colors.grey),
          child: TextFormField(
            cursorColor: Colors.grey[400],
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,
              hintStyle: TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0),
              prefixIcon: icon ?? null,
            ),
          ),
        ));
  }
}
