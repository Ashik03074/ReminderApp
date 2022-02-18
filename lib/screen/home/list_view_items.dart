import 'package:flutter/material.dart';
import 'package:ios_remainder/models/category_collection.dart';

const LIST_VIEW_HEIGHT = 70.0;

class ListViewWidget extends StatefulWidget {
  final CategoryCollection categoryCollection;

  const ListViewWidget({required this.categoryCollection});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.categoryCollection.categories.length * LIST_VIEW_HEIGHT +
          LIST_VIEW_HEIGHT,
      child: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            if (newIndex > oldIndex) {
              newIndex--;
            }
            final item = widget.categoryCollection.removeItem(oldIndex);
            setState(() {
              widget.categoryCollection.InsertItem(newIndex, item);
            });
          },
          children: widget.categoryCollection.categories
              .map((category) => SizedBox(
                    key: UniqueKey(),
                    height: LIST_VIEW_HEIGHT,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          category.toggleCheckbox();
                        });
                      },
                      tileColor: Colors.grey[800],
                      leading: Container(
                        decoration: BoxDecoration(
                          color: category.isChecked
                              ? Colors.blueAccent
                              : Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: category.isChecked
                                  ? Colors.blueAccent
                                  : Colors.grey),
                        ),
                        child: Icon(Icons.check,
                            color: category.isChecked
                                ? Colors.white
                                : Colors.transparent),
                      ),
                      title: Row(
                        children: [
                          category.icon,
                          SizedBox(width: 10),
                          Text(category.name!,
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      trailing: Icon(Icons.reorder),
                    ),
                  ))
              .toList()),
    );
  }
}
