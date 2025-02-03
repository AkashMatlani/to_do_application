import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_application/bloc/todo_bloc.dart';
import 'package:to_do_application/repositories/todo_repository.dart';
import 'package:to_do_application/views/todo_screen.dart';

import 'bloc/todo_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(repository: TodoRepository())..add(LoadTodos()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To-Do Application',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodoScreen(), // TodoScreen will now have access to TodoBloc
      ),
    );
  }
}
