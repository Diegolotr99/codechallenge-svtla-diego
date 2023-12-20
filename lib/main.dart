import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/team_member_list/presentation/bloc/team_member_bloc.dart';
import 'features/team_member_list/presentation/pages/home_team_members.dart';
import 'core/di.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo List Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => di.getIt<TeamMemberBloc>(),
        child: const Scaffold(
          body: HomeTeamMembers(),
        ),
      ),
    );
  }
}
