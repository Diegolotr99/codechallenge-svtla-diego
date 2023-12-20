import 'package:flutter/material.dart';

class TeamMemberBio extends StatelessWidget {
  const TeamMemberBio({super.key, required this.teamMemberBio});
  final String teamMemberBio;

  @override
  Widget build(BuildContext context) {
    return Text(
      teamMemberBio,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
