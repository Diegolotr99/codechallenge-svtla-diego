import 'package:code_challenge/features/team_member_list/domain/use_cases/delete_team_member.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/team_member.dart';
import '../../domain/use_cases/get_team_members.dart';

part 'team_member_event.dart';

part 'team_member_state.dart';

class TeamMemberBloc extends Bloc<TeamMemberEvent, TeamMemberState> {
  final GetTeamMembersUseCase _getTeamMembersUseCase;
  final DeleteTeamMemberUseCase _deleteTeamMemberUseCase;

  TeamMemberBloc(
      {required GetTeamMembersUseCase getTeamMembersUseCase,
      required DeleteTeamMemberUseCase deleteTeamMemberUseCase})
      : _getTeamMembersUseCase = getTeamMembersUseCase,
        _deleteTeamMemberUseCase = deleteTeamMemberUseCase,
        super(TeamMembersInitial()) {
    on<GetTeamMembers>(
        (event, emit) => handleGetTeamMembers(event).forEach(emit));
    on<DeleteTeamMemberPressed>(
        (event, emit) => handleDeleteTeamMemberEvent(event, emit));
  }

  Stream<TeamMemberState> handleGetTeamMembers(
    GetTeamMembers event,
  ) async* {
    yield TeamMembersLoading();
    final list = await _getTeamMembersUseCase.execute();
    yield TeamMembersLoaded(teamMembers: list);
  }

  Future<void> handleDeleteTeamMemberEvent(
    DeleteTeamMemberPressed event,
    Emitter<TeamMemberState> emit,
  ) async {
    print('handleDeleteTeamMemberEvent');
    final currentList = (state as TeamMembersLoaded).teamMembers;
    final newList = List<TeamMember>.from(currentList)..removeWhere((element) => element.id == event.teamMemberId);

    if (newList.isEmpty) {
      emit(TeamMembersEmpty());
    } else {
      emit(TeamMembersLoaded(teamMembers: newList));
    }
  }
}

// Ideally the use case would go to the datasource and delete the item from there and then we
// would just refresh the list from the datasource but since its a json file and we are
// not notifying we are just finding the item and updating the state with the updated list.
// _deleteTeamMemberUseCase.execute(event.teamMemberId);
