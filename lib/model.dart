import 'package:flutter/foundation.dart';
import 'package:flutter_role_base_access_control/enum.dart';


@immutable
class UserData {
  final String username;
  final String email;
  final UserRole role;

  const UserData({
    required this.username,
    required this.email,
    required this.role,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      username: json['username']!,
      email: json['email'],
      role: UserRole.fromJson(json['role']['name'])
    );
  }
}