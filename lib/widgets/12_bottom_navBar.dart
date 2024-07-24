import 'package:flutter/material.dart';
import 'package:thirty_days_thirty_widgets/widgets/10_bottomSheet.dart';
import 'package:thirty_days_thirty_widgets/widgets/5_snackbar.dart';
import 'package:thirty_days_thirty_widgets/widgets/6_dismissible.dart';
import 'package:thirty_days_thirty_widgets/widgets/9_alertDialog.dart';


class myBottomNav extends StatefulWidget {
  const myBottomNav({super.key});

  @override
  State<myBottomNav> createState() => _myBottomNavState();
}

class _myBottomNavState extends State<myBottomNav> {
  int selectedIndex = 0;
  PageController pageController  =PageController();
  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Groups"),
  // ];

  void onItemTap (int index){
    setState(() {
      selectedIndex= index;

    });
     pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation Bar"),
      //   backgroundColor: Colors.cyan,
      // ),
      // body:
      // Center(child: widgets.elementAt(selectedIndex)
      // ),
      body: PageView(
        controller: pageController,
        children: const [
          myDismissible(),
          snackBarWidget(),
          myAlertDialog(),
          bottomSheet(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
               label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Groups"),
          ],
          currentIndex: selectedIndex,
         selectedItemColor: Colors.green,
         unselectedItemColor: Colors.grey,
        onTap: onItemTap,),
    );
  }
}
