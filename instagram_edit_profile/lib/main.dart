import 'package:flutter/material.dart';
import 'package:instagram_edit_profile/custom_text_field.dart';
import 'package:instagram_edit_profile/profile_information.dart';
import 'package:instagram_edit_profile/profile_picture.dart';
import 'package:instagram_edit_profile/title_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Edit Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _bgImageRadius = 30;
  double _titleFontSize = 6.0;
  double _inputFontSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
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
          /*SizedBox(
            height: 30.0,
          ),
          ProfileInformation(),*/
        ]),
      ),
    );
  }
}

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ProfilePicture(
            radius: _bgImageRadius,
          ),
          SizedBox(
            height: 5.0,
          ),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "Username",
          ),
          CustomTextField(
            hintText: "Username",
            inputType: TextInputType.text,
          ),
          SizedBox(
            height: 15.0,
          ),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "Name",
          ),
          CustomTextField(
            hintText: "Name",
            inputType: TextInputType.text,
          ),
          SizedBox(
            height: 15.0,
          ),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "Website",
          ),
          CustomTextField(
            hintText: "Website",
            inputType: TextInputType.url,
          ),
          SizedBox(
            height: 15.0,
          ),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "Bio",
          ),
          CustomTextField(
            hintText: "Bio",
            inputType: TextInputType.text,
          ),
          SizedBox(
            height: 15.0,
          ),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "E-mail Address",
          ),
          CustomTextField(
            hintText: "E-mail Address",
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 15.0),
          TitleText(
            inputFontSize: _inputFontSize,
            titleName: "Phone Number",
          ),
          CustomTextField(
            hintText: "Phone Number",
            inputType: TextInputType.phone,
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
