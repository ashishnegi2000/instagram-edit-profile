import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String titleName;
  const TitleText({
    Key key,
    @required double inputFontSize,
    @required this.titleName,
  })  : _inputFontSize = inputFontSize,
        super(key: key);

  final double _inputFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          titleName,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: _inputFontSize,
          ),
        ),
      ],
    );
  }
}
