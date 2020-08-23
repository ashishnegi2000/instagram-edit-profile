import 'package:flutter/material.dart';

class ProfilePicture extends StatefulWidget {
  final double radius;

  const ProfilePicture({Key key, this.radius}) : super(key: key);
  @override
  _ProfilePictureState createState() => _ProfilePictureState(
        radius: radius,
      );
}

class _ProfilePictureState extends State<ProfilePicture> {
  final double radius;

  _ProfilePictureState({this.radius});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/krishna.png'),
            radius: radius,
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Change Profile Photo",
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
