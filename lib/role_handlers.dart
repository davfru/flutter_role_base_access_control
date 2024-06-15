import 'package:flutter/material.dart';
import 'package:flutter_role_base_access_control/core.dart';
import 'package:flutter_role_base_access_control/enum.dart';

class WidgetWithRole extends StatefulWidget {
  const WidgetWithRole({
    super.key,
    required this.child,
    required this.allowedRoles,
  });

  final Widget child;
  final List<UserRole> allowedRoles;

  @override
  State<WidgetWithRole> createState() => _WidgetWithRoleState();
}

class _WidgetWithRoleState extends State<WidgetWithRole> {
  late Core core;

  @override
  void initState() {
    core = Core();

    super.initState();
  }

  bool get isAllowed => widget.allowedRoles.contains(core.user?.role);
  
  @override
  Widget build(BuildContext context) {
    if (isAllowed) {
      return widget.child;
    }

    return Container();
  }
}
