import 'package:flutter/material.dart';
import 'package:profile/data/models.dart';
import 'package:profile/widgets/FollowButton.dart';

// ignore: must_be_immutable
class HeaderTop extends StatelessWidget {
  Datamain data;
  HeaderTop({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? textcolor = Colors.grey[800];

    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(data.results.picture.large),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${data.results.name.first} ${data.results.name.last}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 14,
                  color: textcolor,
                ),
                Text(
                  data.results.location.city,
                  style: TextStyle(
                    fontSize: 12,
                    color: textcolor,
                  ),
                )
              ],
            ))
          ],
        ),
        Flexible(
            flex: 4,
            child: Container(
                alignment: Alignment.centerRight, child: FollowButton())),
      ],
    );
  }
}
