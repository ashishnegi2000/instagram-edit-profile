import 'package:flutter/material.dart';
import 'package:instagram_edit_profile/custom_text_field.dart';
import 'package:instagram_edit_profile/profile_picture.dart';
import 'package:instagram_edit_profile/title_text.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// ignore: must_be_immutable
class GeneralInformation extends StatelessWidget {
  GeneralInformation({
    Key key,
    @required double bgImageRadius,
    @required double inputFontSize,
  })  : _bgImageRadius = bgImageRadius,
        _inputFontSize = inputFontSize,
        super(key: key);

  final double _bgImageRadius;
  final double _inputFontSize;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

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
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              print(value);
            },
            ignoreBlank: false,
            autoValidate: true,
            selectorTextStyle: TextStyle(color: Colors.black),
            initialValue: number,
            textFieldController: controller,
            inputBorder: InputBorder.none,
            inputDecoration: InputDecoration(
              hintText: "Phone Number",
              border: InputBorder.none,
            ),
          ),
          /*Row(
            children: <Widget>[
              CustomTextField(
                hintText: "Phone Number",
                inputType: TextInputType.phone,
              ),
            ],
          ),*/
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
