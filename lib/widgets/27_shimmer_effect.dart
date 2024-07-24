import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class myShimmer extends StatelessWidget {
  const myShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer Effect"),
        backgroundColor: Colors.red,
      ),
      body: Expanded(
        child: Container(
          child: Shimmer.fromColors(
              child: ListView.builder(
                 itemCount: 6,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                        ),
                        title: Container(
                          height: 5,
                          width: double.infinity,
                          color: Colors.grey.shade500,
                        ),
                        subtitle: Container(
                          height: 5,
                          width: double.infinity,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    );
                  }),
              baseColor: Colors.grey.shade500,
              highlightColor: Colors.white)
        ),
      ),
    );
  }
}
