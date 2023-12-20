import 'package:code_challenge/features/team_member_list/domain/entities/team_member.dart';
import 'package:code_challenge/features/team_member_list/domain/repositories/team_member_repository.dart';

class GetTeamMembersUseCase {
  final TeamMemberRepository teamMembersRepository;

  GetTeamMembersUseCase(this.teamMembersRepository);

  Future<List<TeamMember>> execute() {
    return teamMembersRepository.teamMembers;
  }
}