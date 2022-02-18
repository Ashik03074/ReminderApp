import 'dart:collection';

import 'package:ios_remainder/common.widgets/category_icon.dart';
import 'package:ios_remainder/models/category.dart';
import 'package:flutter/material.dart';

class CategoryCollection {
  final List<Category> _categories = [
    Category(
        id: 'Today',
        name: 'Today',
        icon: CategoryIcon(
          bgColor: Colors.blueAccent,
          iconData: Icons.calendar_today,
        )),
    Category(
        id: 'Scheduled',
        name: 'Scheduled',
        icon: CategoryIcon(
          bgColor: Colors.redAccent,
          iconData: Icons.calendar_today_rounded,
        )),
    Category(
        id: 'All',
        name: 'All',
        icon: CategoryIcon(
          bgColor: Colors.grey,
          iconData: Icons.inbox_rounded,
        )),
    Category(
        id: 'Flagged',
        name: 'Flagged',
        icon: CategoryIcon(
          bgColor: Colors.orangeAccent,
          iconData: Icons.flag,
        )),
  ];
  UnmodifiableListView<Category> get categories =>
      UnmodifiableListView(_categories);

  Category removeItem(index) {
    return _categories.removeAt(index);
  }

  void InsertItem(index, item) {
    _categories.insert(index, item);
  }

  List<Category> get SelectedCategories {
    return _categories.where((category) => category.isChecked).toList();
  }
}
