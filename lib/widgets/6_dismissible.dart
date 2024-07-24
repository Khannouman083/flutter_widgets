import 'package:flutter/material.dart';

class myDismissible extends StatefulWidget {
  const myDismissible({super.key});

  @override
  State<myDismissible> createState() => _myDismissibleState();
}

class _myDismissibleState extends State<myDismissible> {
  List<String> fruits = ["Mango", "Apple", "Banana", "Guava", "Grapes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Widget"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final key = UniqueKey();
            return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 1000),
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 1500),
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                background: Container(
                  color: Colors.green,
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
    );
  }
}
