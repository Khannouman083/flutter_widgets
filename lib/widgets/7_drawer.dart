import 'package:flutter/material.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                    child: Container(
                      color: Colors.grey,
                     child: const Row(
                       children: [
                         CircleAvatar(
                           radius: 40,
                           backgroundImage: NetworkImage('https://scontent.fisb3-2.fna.fbcdn.net/v/t39.30808-6/311156317_798481264532776_2142121344972141205_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeH5nuOTpGUtue9FCAV8FdsYHE1_UvlTiLocTX9S-VOIur9mQ9w-kR7q9ZMBFfOal-C9CJgG4sDD0gM_oKeDNWU9&_nc_ohc=bBUV5KZpoCQQ7kNvgEmxfIu&_nc_zt=23&_nc_ht=scontent.fisb3-2.fna&oh=00_AYBTvPmAogBmhJIPPl2cg3puadMobXeZ87dZXkLE8zxmBQ&oe=668EF4C6'),
                         ),
                         SizedBox(
                           width: 10,
                         ),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Nouman Khan", style: TextStyle(fontWeight: FontWeight.bold),),
                             Text("Khannouman@gmail.com")
                           ],
                         )
                       ],
                     ),
                    )),
                const ListTile(
                  leading: Icon(Icons.folder),
                  title: Text("My Files"),
                ),
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Shared with me"),
                ),
                const ListTile(
                  leading: Icon(Icons.delete),
                  title: Text("Trash"),
                ),
                const ListTile(
                  leading: Icon(Icons.dangerous),
                  title: Text("Spam"),
                ), const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Starred"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share"),
                ),
                const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log out"),
                ),

              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text("Drawer"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
       body: const Center(
         child: Text("My Drawer"),
       ),
      ),
    );
  }
}
