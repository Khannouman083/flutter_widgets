import "package:flutter/material.dart";

class myAlertDialog extends StatefulWidget {
  const myAlertDialog({super.key});

  @override
  State<myAlertDialog> createState() => _myAlertDialogState();
}

class _myAlertDialogState extends State<myAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alert Dialog"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: const Text("Show Alert")),
        ),
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("This is alert dialog"),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Hello Beautiful People"),
                Text("This is Nouman Khan"),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Approve")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"))
          ],
        );
      });
}
