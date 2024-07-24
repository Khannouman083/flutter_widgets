import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 200,
              child: TextButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor),
                      elevation: WidgetStateProperty.all(5),
                      overlayColor: WidgetStateProperty.all(Colors.black)),
                  onPressed: () {
                    print("Text Button Tappped");
                  },
                  child: const Text(
                    "Text Button",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    print("Elevated Button Tapped");
                  },
                  child: const Text(
                    "Elevated Button",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
