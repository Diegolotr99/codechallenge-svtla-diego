import 'package:code_challenge/features/team_member_list/domain/entities/team_member.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_bio.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_delete_btn.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_info.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/team_member_bloc.dart';

class TeamMemberCard extends StatelessWidget {
  const TeamMemberCard({super.key, required this.teamMember});

  final TeamMember teamMember;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TeamMemberPhoto(url: teamMember.avatar),
                    Expanded(
                      child: TeamMemberName(
                        teamMember: teamMember,
                      ),
                    ),
                    TeamMemberDeleteBtn(teamMemberId: teamMember.id)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TeamMemberBio(
                    teamMemberBio: teamMember.bio,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
