import 'package:flutter/material.dart';

class containerAndSizedbox extends StatelessWidget {
  const containerAndSizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container and Sized Box"),
          backgroundColor: Colors.deepPurple,
        ),
        body:
            // Center(
            //   child: SizedBox(
            //     height: 50,
            //     width: 50,
            //     child: Center(child: Text("Home")),
            //   ),
            // ),
            Center(
          child: Container(
            // padding: EdgeInsets.all(10),

            height: 100,
            width: 100,
            // color: Colors.green,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, spreadRadius: 10, color: Colors.black)
                ]),

            child: Center(
                child: Container(
              margin: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.red,
            )),
          ),
        ));
  }
}
