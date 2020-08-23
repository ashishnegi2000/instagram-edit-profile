import 'package:flutter/material.dart';

class ProfileInformation extends StatefulWidget {
  @override
  _ProfileInformationState createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            color: Colors.grey,
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                " Profile Information",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          ProfileInformationData(
            text: "E-mail Address",
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 5.0,
          ),
          ProfileInformationData(
            text: "Phone Number",
            inputType: TextInputType.phone,
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}

class ProfileInformationData extends StatelessWidget {
  final text;
  final dynamic inputType;
  const ProfileInformationData({
    Key key,
    @required this.text,
    @required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            TextField(
              keyboardType: inputType,
              decoration: InputDecoration(hintText: text),
            ),
          ],
        ),
      ),
    );
  }
}
