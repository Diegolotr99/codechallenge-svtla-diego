import 'package:code_challenge/features/team_member_list/domain/repositories/team_member_repository.dart';

class DeleteTeamMemberUseCase {
  final TeamMemberRepository teamMembersRepository;

  DeleteTeamMemberUseCase(this.teamMembersRepository);

  Future<void> execute(String id) {
    return teamMembersRepository.deleteTeamMember(id);
  }
}