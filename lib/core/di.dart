import 'package:code_challenge/features/team_member_list/data/data_sources/team_member_data_source.dart';
import 'package:code_challenge/features/team_member_list/data/repositories/team_member_repository_impl.dart';
import 'package:code_challenge/features/team_member_list/domain/repositories/team_member_repository.dart';
import 'package:code_challenge/features/team_member_list/domain/use_cases/delete_team_member.dart';
import 'package:code_challenge/features/team_member_list/domain/use_cases/get_team_members.dart';
import 'package:code_challenge/features/team_member_list/presentation/bloc/team_member_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // Data sources
  getIt.registerLazySingleton<TeamMemberDataSource>(
    () => TeamMemberDataSource(),
  );

  // Repository
  getIt.registerLazySingleton<TeamMemberRepository>(
    () => TeamMemberRepositoryImpl(getIt()),
  );

  // Use cases
  getIt.registerLazySingleton(() => GetTeamMembersUseCase(getIt()));
  getIt.registerLazySingleton(() => DeleteTeamMemberUseCase(getIt()));

  // Bloc
  getIt.registerFactory(
    () => TeamMemberBloc(
      getTeamMembersUseCase: getIt(),
      deleteTeamMemberUseCase: getIt(),
    ),
  );
}
