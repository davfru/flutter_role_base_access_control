import 'package:flutter/material.dart';
import 'package:flutter_role_base_access_control/core.dart';
import 'package:flutter_role_base_access_control/role_handlers.dart';
import 'package:flutter_role_base_access_control/message_button.dart';
import 'package:flutter_role_base_access_control/enum.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Core core = Core();
  await core.setUserData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User model app'),
        ),
        body: const Center(
          child: WidgetWithRole(
            allowedRoles: [
              UserRole.admin,
              UserRole.manager
            ],
            child: MessageButton(),
          ),
        ),
      ),
    );
  }
}
