import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/bloc/followBloc/follow_bloc.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowBloc, FollowState>(
      builder: (context, state) {
        if (state is UnFollowState) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
              ),
              onPressed: () {
                BlocProvider.of<FollowBloc>(context).add(FollowAddedEvent());
              },
              child: Container(
                alignment: Alignment.center,
                width: 60,
                child: Text('Follow'),
              ));
        } else if (state is FollowState) {
          return OutlinedButton(
            style: OutlinedButton.styleFrom(shape: StadiumBorder()),
            onPressed: () {
              BlocProvider.of<FollowBloc>(context).add(FollowRemoveEvent());
            },
            child: Container(
                alignment: Alignment.center,
                width: 60,
                child: Text('Unfollow')),
          );
        }
        throw ('error');
      },
    );
  }
}
