import 'package:code_challenge/core/di.dart';
import 'package:code_challenge/features/team_member_list/presentation/bloc/team_member_bloc.dart';
import 'package:code_challenge/features/team_member_list/presentation/widgets/team_member_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTeamMembers extends StatelessWidget {
  const HomeTeamMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamMemberBloc, TeamMemberState>(
        builder: (context, state) {
          print('state -> ');
          print(state);
      if (state is TeamMembersInitial) {
        print('ListInitial is!');
        context.read<TeamMemberBloc>().add(GetTeamMembers());
      }
      if (state is TeamMembersLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.blueGrey,
          ),
        );
      }
      if (state is TeamMembersLoaded) {
        print('TeamMembersLoaded -> ' + state.teamMembers.length.toString());
        return TeamMemberList(teamMembers: state.teamMembers);
      }
      if (state is TeamMembersEmpty) {
        return const Center(child: Text('No more team members.'));
      }
      return Container();
    });
  }
}
