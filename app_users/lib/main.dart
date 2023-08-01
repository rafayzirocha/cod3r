import 'package:app_users/provider/users.dart';
import 'package:app_users/routes/app_routes.dart';
import 'package:app_users/views/user_form.dart';
import 'package:app_users/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0066FF)),
          useMaterial3: true,
        ),
        routes: {
          AppRoutes.home: (_) => const UserList(),
          AppRoutes.userForm: (_) => UserForm(),
        },
      ),
    );
  }
}
