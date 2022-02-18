import 'package:flutter/material.dart';
import 'package:ios_remainder/models/category_collection.dart';
import 'package:ios_remainder/common.widgets/category_icon.dart';
import 'package:ios_remainder/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:ios_remainder/screen/home/footer.dart';
import 'package:ios_remainder/screen/home/grid_view_item.dart';
import 'package:ios_remainder/screen/home/list_view_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryCollection categoryCollection = CategoryCollection();
  String layoutType = 'grid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("IOS Reminder"),
        //centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              if (layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
              } else {
                setState(() {
                  layoutType = 'grid';
                });
              }
            },
            child: Text(
              layoutType == 'grid' ? 'Edit' : 'Done',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: AnimatedCrossFade(
                duration: Duration(microseconds: 300),
                crossFadeState: layoutType == 'grid'
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: GridViewWidget(
                    categories: categoryCollection.SelectedCategories),
                secondChild:
                    ListViewWidget(categoryCollection: categoryCollection),
              ),
              // child: layoutType == 'grid'
              //     ? GridViewWidget(
              //         categories: categoryCollection.SelectedCategories)
              //     : ListViewWidget(categoryCollection: categoryCollection),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
