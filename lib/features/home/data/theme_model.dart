class ThemeModel {
  final bool isDarkMode;

  ThemeModel({
    required this.isDarkMode,
  });

  factory ThemeModel.fromJson(Map<String, dynamic> json) {
    return ThemeModel(
      isDarkMode: json['isDarkMode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isDarkMode': isDarkMode,
    };
  }
}
