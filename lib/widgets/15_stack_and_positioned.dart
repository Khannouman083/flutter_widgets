import "package:flutter/material.dart";

class myStack extends StatelessWidget {
  const myStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack and Positioned"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Positioned(
              top: 25,
              left: 25,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            )
          ],
        ),
      )

    );
  }
}
