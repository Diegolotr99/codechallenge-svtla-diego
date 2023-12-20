import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/entities/team_member.dart';

class TeamMemberDataSource {

  Future<List<TeamMember>> getTeamMembers() async {
    final String response = await rootBundle.loadString('assets/files/team.json');
    final data = await json.decode(response);
    List<TeamMember> listMembers = [];
    // Delay to mock 2 seconds
    await Future.delayed(const Duration(seconds: 2), () {
      if (data is List) {
        // Assuming the JSON is an array of users
        listMembers = data.map((json) => TeamMember.fromJson(json)).toList();
      } else {
        // Assuming the JSON is a single user object
        TeamMember teamMember = TeamMember.fromJson(data);
        listMembers = [teamMember];
      }
    });

    return listMembers;
  }
}