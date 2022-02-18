import 'package:flutter/material.dart';

class AddListScreen extends StatelessWidget {
  const AddListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add List"),
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: Text("Add"))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Icon(Icons.home, size: 75),
          )
        ],
      ),
    );
  }
}
