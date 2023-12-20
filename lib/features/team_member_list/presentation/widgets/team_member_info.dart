import 'package:code_challenge/features/team_member_list/domain/entities/team_member.dart';
import 'package:flutter/material.dart';

class TeamMemberName extends StatelessWidget {
  const TeamMemberName({super.key, required this.teamMember});

  final TeamMember teamMember;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${teamMember.firstName} ${teamMember.lastName}',
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          teamMember.title,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
