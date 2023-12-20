import 'package:flutter/material.dart';

class TeamMemberPhoto extends StatelessWidget {
  const TeamMemberPhoto({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: const EdgeInsetsDirectional.only(end: 12.0),
      child: Image(
        image: NetworkImage(url),
        errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
          return Image.asset('assets/images/avatar.png');
        },
      ),
    );
  }
}
