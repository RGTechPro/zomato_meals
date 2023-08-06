
class ChefListModel {
  final List<ChefData> chefs;

  ChefListModel({
    required this.chefs,
  });

  factory ChefListModel.fromJson(List<dynamic> json) {
    List<ChefData> chefs = json.map((chefJson) => ChefData.fromJson(chefJson)).toList();
    return ChefListModel(chefs: chefs);
  }

  List<Map<String, dynamic>> toJson() {
    return chefs.map((chef) => chef.toJson()).toList();
  }
}

class ChefData {
  final String address;
  final String coverUrl;
  final String days;
  final String imageUrl;
  final bool isVerified;
  final int mealsServed;
  final Map<String, MenuData> menu;
  final String menuTypes;
  final String name;
  final List<String> tags;

  ChefData({
    required this.address,
    required this.coverUrl,
    required this.days,
    required this.imageUrl,
    required this.isVerified,
    required this.mealsServed,
    required this.menu,
    required this.menuTypes,
    required this.name,
    required this.tags,
  });




  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'cover_url': coverUrl,
      'days': days,
      'image_url': imageUrl,
      'isVerified': isVerified,
      'meals_served': mealsServed,
      'menu': mapMenuDataToJson(menu),
      'menu_types': menuTypes,
      'name': name,
      'tags': tags,
    };
  }

  static Map<String, dynamic> mapMenuDataToJson(Map<String, MenuData> menuData) {
    Map<String, dynamic> jsonMap = {};
    menuData.forEach((key, value) {
      jsonMap[key] = value.toJson();
    });
    return jsonMap;
  }

  factory ChefData.fromJson(Map<String, dynamic> json) {
    return ChefData(
      address: json['address'],
      coverUrl: json['cover_url'],
      days: json['days'],
      imageUrl: json['image_url'],
      isVerified: json['isVerified'],
      mealsServed: json['meals_served'],
      menu: mapMenuDataFromJson(json['menu']),
      menuTypes: json['menu_types'],
      name: json['name'],
      tags: List<String>.from(json['tags']),
    );
  }

  static Map<String, MenuData> mapMenuDataFromJson(Map<String, dynamic> json) {
    Map<String, MenuData> menuData = {};
    json.forEach((key, value) {
      menuData[key] = MenuData.fromJson(value);
    });
    return menuData;
  }
  
}

class MenuData {
  final int calories;
  final int carb;
  final bool isVeg;
  final String name;
  final int protein;

  MenuData({
    required this.calories,
    required this.carb,
    required this.isVeg,
    required this.name,
    required this.protein,
  }); Map<String, dynamic> toJson() {
    return {
      'calories': calories,
      'carb': carb,
      'isVeg': isVeg,
      'name': name,
      'protein': protein,
    };
  }

  factory MenuData.fromJson(Map<String, dynamic> json) {
    return MenuData(
      calories: json['calories'],
      carb: json['carb'],
      isVeg: json['isVeg'],
      name: json['name'],
      protein: json['protein'],
    );
  }
}


