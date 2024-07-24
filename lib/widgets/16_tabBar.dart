import 'package:flutter/material.dart';

class myTabBar extends StatelessWidget {
  const myTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 5,
                tabs: [
              Tab(icon: Icon(Icons.camera), text: "Camera",),
              Tab(icon: Icon(Icons.chat), text: "Chats",),
              Tab(icon: Icon(Icons.add_a_photo_rounded), text: "Status",),
              Tab(icon: Icon(Icons.call), text: "Calls",),
            ]),
          ),
          body: TabBarView(
              children: [
                Container(
                  child: const Center(
                 child: Icon(Icons.camera, size: 50,),
                ),
                ),
                Container(child: const Center(
                  child: Icon(Icons.chat,size: 50,),
                ),
                ),
                Container(child: const Center(
                  child: Icon(Icons.add_a_photo_rounded,size: 50,),
                ),
                ),
                Container(child: const Center(
                  child: Icon(Icons.call,size: 50,),
                ),
                ),
              ]),

        ));
  }
}
