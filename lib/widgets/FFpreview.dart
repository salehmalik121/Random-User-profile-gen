import 'package:flutter/material.dart';

class FFpreview extends StatelessWidget {
  String DataToShow;
  int subData;
  FFpreview({
    Key? key,
    required this.DataToShow,
    required this.subData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DataToShow,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(subData.toString(), style: TextStyle(fontSize: 16))
      ],
    );
  }
}
