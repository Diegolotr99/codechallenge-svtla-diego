
import '../entities/team_member.dart';

abstract class TeamMemberRepository {
  Future<List<TeamMember>> get teamMembers;
  Future<void> deleteTeamMember(String id);
}