import 'package:code_challenge/features/team_member_list/domain/entities/team_member.dart';
import 'package:code_challenge/features/team_member_list/domain/repositories/team_member_repository.dart';

import '../data_sources/team_member_data_source.dart';

class TeamMemberRepositoryImpl extends TeamMemberRepository {
  final TeamMemberDataSource teamMemberDataSource;

  TeamMemberRepositoryImpl(this.teamMemberDataSource){}

  @override
  Future<List<TeamMember>> get teamMembers {
    return teamMemberDataSource.getTeamMembers();
  }


  @override
  Future<void> deleteTeamMember(String id) async {
    // Delete!
    // Since we are not actually deleting the team member
    // from the source that is the json file we are simplifying and handling in the bloc
  }

}