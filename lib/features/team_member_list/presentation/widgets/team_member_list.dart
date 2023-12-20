import 'package:code_challenge/features/team_member_list/domain/entities/team_member.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_card.dart';
import 'package:flutter/material.dart';

class TeamMemberList extends StatelessWidget {
  const TeamMemberList({super.key, required this.teamMembers});
  final List<TeamMember> teamMembers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teamMembers.length,
      itemBuilder: (context, index) {
        final item = teamMembers[index];
        return TeamMemberCard(teamMember: item);
      },
    );
  }
}
