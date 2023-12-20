
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_member.freezed.dart';
part 'team_member.g.dart';

@freezed
class TeamMember with _$TeamMember {
  const TeamMember._();

  const factory TeamMember({
    required String id,
    required String firstName,
    required String lastName,
    required String title,
    required String bio,
    @Default("") String avatar,
  }) = _TeamMember;

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);
}