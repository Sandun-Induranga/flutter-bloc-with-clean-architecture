import '../data/theme_model.dart';

class HomeState {
  final ThemeModel themeModel;

  HomeState({
    required this.themeModel,
  });

  factory HomeState.initial() => HomeState(
        themeModel: ThemeModel(
          // Default theme
          isDarkMode: false,
        ),
      );

  HomeState clone({
    ThemeModel? themeModel,
  }) {
    return HomeState(
      themeModel: themeModel ?? this.themeModel,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeState && other.themeModel == themeModel;
  }

  @override
  int get hashCode => themeModel.hashCode;
}
