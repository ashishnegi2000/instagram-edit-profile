import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_edit_profile/general_information.dart';

class Layout extends StatelessWidget {
  const Layout({
    Key key,
    @required double bgImageRadius,
    @required double inputFontSize,
  })  : _bgImageRadius = bgImageRadius,
        _inputFontSize = inputFontSize,
        super(key: key);

  final double _bgImageRadius;
  final double _inputFontSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Page",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.check,
              color: Colors.blue[800],
              size: 40.0,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          GeneralInformation(
              bgImageRadius: _bgImageRadius, inputFontSize: _inputFontSize),
        ]),
      ),
    );
  }
}
