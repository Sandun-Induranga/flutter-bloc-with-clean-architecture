class ThemeModel{
  final String themeName;
  final String themeData;

  ThemeModel({required this.themeName, required this.themeData});

  factory ThemeModel.fromJson(Map<String, dynamic> json){
    return ThemeModel(
      themeName: json['themeName'],
      themeData: json['themeData']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'themeName': themeName,
      'themeData': themeData
    };
  }
}
