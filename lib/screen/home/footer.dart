import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_circle),
              label: const Text(
                "New Reminder",
                //style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Add List",
                //style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
