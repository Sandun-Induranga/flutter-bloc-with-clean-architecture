import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_clean_architecture/features/home/presentation/home_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const HomeView(),
    );
  }
}

