import 'package:ios_remainder/common.widgets/category_icon.dart';

class Category {
  String? id;
  String? name;
  bool isChecked;
  final CategoryIcon icon;
  Category(
      {required this.id,
      required this.name,
      required this.icon,
      this.isChecked = true});

  toggleCheckbox() {
    isChecked = !isChecked;
  }
}

//var category = Category(id: '1', name: 'All');
