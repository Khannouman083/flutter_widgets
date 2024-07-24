import 'package:flutter/material.dart';

class snackBarWidget extends StatelessWidget {
  const snackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
      Center(
        child: ElevatedButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(20)),
            backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor),
            overlayColor: WidgetStateProperty.all(Colors.black),
          ),
            onPressed: (){
             final snackbar = SnackBar(
               action: SnackBarAction(label: "Undo",
                   textColor: Colors.red,
                   onPressed: (){}),
               duration: const Duration(milliseconds: 3000),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
               behavior: SnackBarBehavior.floating,
               backgroundColor: Colors.white,
                 content: const Text("File Uploaded Successfully", style: TextStyle(color: Colors.black),));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text("Show Snack Bar")),
      ),
    );
  }
}
