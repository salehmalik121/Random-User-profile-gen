import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FFpreview extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String DataToShow;
  int subData;
  FFpreview({
    Key? key,
    // ignore: non_constant_identifier_names
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
