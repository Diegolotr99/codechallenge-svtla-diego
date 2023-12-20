part of 'team_member_bloc.dart';

class TeamMembersInitial extends TeamMemberState {}
class TeamMembersLoading extends TeamMemberState {}
class TeamMembersEmpty extends TeamMemberState {}
class TeamMembersLoaded extends TeamMemberState {
  final List<TeamMember> teamMembers;

  const TeamMembersLoaded({required this.teamMembers});
  @override
  List<Object?> get props => [teamMembers];
}

class TeamMemberState extends Equatable {

  const TeamMemberState();

  @override
  List<Object?> get props => [];
}