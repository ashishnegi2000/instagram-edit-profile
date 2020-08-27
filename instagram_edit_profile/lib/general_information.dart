import 'package:flutter/material.dart';
import 'package:instagram_edit_profile/custom_text_field.dart';
import 'package:instagram_edit_profile/profile_picture.dart';
import 'package:instagram_edit_profile/title_text.dart';

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
