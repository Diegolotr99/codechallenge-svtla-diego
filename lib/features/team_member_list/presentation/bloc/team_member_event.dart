part of 'team_member_bloc.dart';


/// Event being processed by [TeamMemberBloc].
abstract class TeamMemberEvent {}

/// Notifies bloc to increment state.
class GetTeamMembers extends TeamMemberEvent {}

/// Notifies bloc to remove a team member.
class DeleteTeamMemberPressed extends TeamMemberEvent {
  final String teamMemberId;
  DeleteTeamMemberPressed({required this.teamMemberId});
}