sealed class HomeEvent {}

class ChangeThemeEvent extends HomeEvent {
  final bool isDarkMode;

  ChangeThemeEvent({
    required this.isDarkMode,
  });
}
