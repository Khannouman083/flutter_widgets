import 'package:flutter/material.dart';

class rowsAndCols extends StatelessWidget {
  const rowsAndCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        height: 200,
        width: w,
        color: Colors.yellow,
        child:
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.red,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.blue,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.green,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.purple,
            //     ),
            //   ],
            // ),

            // Wrap(
            //   direction: Axis.vertical,
            //   alignment: WrapAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.red,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.blue,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.green,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.purple,
            //     ),
            //   ],
            // ),

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.red,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.blue,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.green,
            //     ),
            //     Container(
            //       height: 70,
            //       width: 70,
            //       color: Colors.purple,
            //     ),
            //   ],
            // ),

            Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.red,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.green,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
