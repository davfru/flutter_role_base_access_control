enum UserRole {
  admin('admin', 3),
  manager('manager', 2),
  user('user', 1);

  const UserRole(this.name, this.level);

  final String name;
  final int level;

  @override
  String toString() => name;

  factory UserRole.fromJson(String? role) {
    switch (role) {
      case "admin":
        return UserRole.admin;
      case "manager":
        return UserRole.manager;
      default:
        return UserRole.user;
    }
  }
}