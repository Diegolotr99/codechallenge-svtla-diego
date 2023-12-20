import 'package:code_challenge/features/team_member_list/presentation/bloc/team_member_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamMemberDeleteBtn extends StatelessWidget {
  const TeamMemberDeleteBtn({super.key, required this.teamMemberId});

  final String teamMemberId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.red[800],
      iconSize: 34,
      icon: const Icon(Icons.delete),
      onPressed: () {
        context.read<TeamMemberBloc>().add(
          DeleteTeamMemberPressed(
            teamMemberId: teamMemberId,
          ),
        );
      },
    );
  }
}
