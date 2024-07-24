import 'package:flutter/material.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bottom sheet"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            overlayColor: WidgetStatePropertyAll(Colors.white),
            backgroundColor: WidgetStatePropertyAll(Colors.cyan),
            elevation: WidgetStatePropertyAll(10),
          ),
            onPressed: (){
              showModalBottomSheet(
                enableDrag: true,
                isDismissible: true,
                backgroundColor: Theme.of(context).primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                  ),
                  context: context,
                  builder: (context){
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("Nouman"),
                          subtitle: Text("Khan"),
                        ),
                        ListTile(
                          title: Text("Salman"),
                          subtitle: Text("Khan"),
                        ),
                        ListTile(
                          title: Text("Ali"),
                          subtitle: Text("Zeb"),
                        ),ListTile(
                          title: Text("Ahsan"),
                          subtitle: Text("Zeb"),
                        ),

                      ],
                    );
                  });
            },
            child: const Text("Show Bottom Sheet")),
      ),
    );
  }
}
