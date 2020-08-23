import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required String hintText,
    @required this.inputType,
  })  : _hintText = hintText,
        super(key: key);

  final String _hintText;
  final dynamic inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: _hintText,
        border: InputBorder.none,
      ),
    );
  }
}
