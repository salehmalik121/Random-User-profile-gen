import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/bloc/followBloc/follow_bloc.dart';

import 'package:profile/data/models.dart';
import 'package:profile/widgets/FFpreview.dart';

import 'Header.dart';

Widget profile(Results data) {
  return BlocProvider(
    create: (_) => FollowBloc(),
    child: Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Column(
          children: [
            HeaderTop(data: data),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFpreview(DataToShow: 'Posts', subData: 6),
                FFpreview(DataToShow: 'Followers', subData: 17),
                FFpreview(DataToShow: 'Following', subData: 69),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
