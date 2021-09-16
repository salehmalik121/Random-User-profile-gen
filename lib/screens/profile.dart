import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/bloc/AboutBLoc/bloc/about_bloc.dart';

import 'package:profile/bloc/DataBloc/user_bloc.dart';
import 'package:profile/data/menuModel.dart';
import 'package:profile/services/menuData.dart';
import 'package:profile/widgets/profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String seed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          actions: [
            Container(
              child: Builder(builder: (BuildContext context) {
                return PopupMenuButton<Menuitem>(
                    color: Colors.blueAccent,
                    onSelected: (item) => selected(item),
                    itemBuilder: (_) => [
                          ...Menuitems.items.map(builderList).toList(),
                        ]);
              }),
            )
          ],
          elevation: 0,
        ),
        body: Center(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is DataLoading) {
                return CircularProgressIndicator();
              } else if (state is DataLoaded) {
                seed = state.data.info.seed;
                return profile(state.data);
              } else if (state is FailedDataLoaded) {
                return Text('error');
              }
              throw ErrorDescription('error');
            },
          ),
        ));
  }

  PopupMenuItem<Menuitem> builderList(Menuitem item) => PopupMenuItem<Menuitem>(
        value: item,
        child: Row(
          children: [item.icon, SizedBox(width: 10), item.title],
        ),
      );
  void selected(Menuitem item) {
    if (item == Menuitems.showmore) {
      Navigator.of(context).pushNamed('/About', arguments: seed);
    }
  }
}
