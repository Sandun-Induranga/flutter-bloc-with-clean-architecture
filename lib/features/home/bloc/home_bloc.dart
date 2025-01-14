import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_clean_architecture/features/home/data/theme_model.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async => switch (event) {
          ChangeThemeEvent() => _changeTheme(event, emit),
        });
  }

  void _changeTheme(ChangeThemeEvent event, Emitter<HomeState> emit) {
    final newThemeModel = ThemeModel(
      isDarkMode: event.isDarkMode,
    );

    emit(state.clone(
      themeModel: newThemeModel,
    ));
  }
}
