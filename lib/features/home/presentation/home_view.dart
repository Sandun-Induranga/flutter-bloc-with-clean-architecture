import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_clean_architecture/features/home/bloc/home_bloc.dart';

import '../bloc/home_event.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current state of the HomeBloc
    var homeState = context.read<HomeBloc>().state;

    return Scaffold(
      backgroundColor:
          homeState.themeModel.isDarkMode ? Colors.black87 : Colors.white,
      body: Column(
        children: [
          Text(
            homeState.themeModel.isDarkMode ? 'Dark Mode 🤪' : 'Light Mode 🤪',
            style: TextStyle(
              color:
                  homeState.themeModel.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Change the theme
              context.read<HomeBloc>().add(ChangeThemeEvent(
                    isDarkMode: !homeState.themeModel.isDarkMode,
                  ));
            },
            child: const Text(
              'Change Theme',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
