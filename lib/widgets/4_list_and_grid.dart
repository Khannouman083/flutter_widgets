import "package:flutter/material.dart";

class listAndGrid extends StatelessWidget {
  listAndGrid({super.key});

  @override
  List<String> fruits = [
    "Mango",
    "Apple",
    "Banana",
    'Guava',
    "Orange",
    "Mango",
    "Apple",
    "Banana",
    'Guava',
    "Orange"
  ];
  Map fruit_persons = {
    'fruits': [
      "Mango",
      "Apple",
      "Banana",
      'Guava',
      "Orange",
      "Mango",
      "Apple",
      "Banana",
      'Guava',
      "Orange"
    ],
    'persons': [
      "Nouman",
      "Salman",
      "Ali",
      'Ahsan',
      "Alyan",
      "Nouman",
      "Salman",
      "Ali",
      'Ahsan',
      "Alyan"
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lists and Grids"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body:
            // ListView(
            //   children: [
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ), Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text("Mango"),
            //         subtitle: Text("Nouman Khan"),
            //       ),
            //     ),
            //   ],
            // )
            // ListView.builder(
            //   itemCount: fruit_persons['fruits'].length,
            //     itemBuilder: (context, index){
            //     return Card(
            //       child: ListTile(
            //         title: Text(fruit_persons['fruits'][index]),
            //         subtitle: Text(fruit_persons['persons'][index]),
            //       ),
            //     );
            //     })

            // GridView(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 20,
            //     childAspectRatio: 4/5),
            // children: [
            //   Card(
            //         child: ListTile(
            //           title: Text("Mango"),
            //           subtitle: Text("Nouman Khan"),
            //         ),
            //       ),
            //   Card(
            //         child: ListTile(
            //           title: Text("Mango"),
            //           subtitle: Text("Nouman Khan"),
            //         ),
            //       ),
            //   Card(
            //         child: ListTile(
            //           title: Text("Mango"),
            //           subtitle: Text("Nouman Khan"),
            //         ),
            //       ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //   Card(
            //     child: ListTile(
            //       title: Text("Mango"),
            //       subtitle: Text("Nouman Khan"),
            //     ),
            //   ),
            //
            //   ],)

            GridView.builder(
              // scrollDirection: Axis.horizontal,
                scrollDirection: Axis.vertical,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                padding: const EdgeInsets.only(top: 10),
                itemCount: fruit_persons['fruits'].length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Theme.of(context).primaryColor,
                    child: ListTile(
                      title: Text(fruit_persons['fruits'][index]),
                      subtitle: Text(fruit_persons['persons'][index]),
                    ),
                  );
                }));
  }
}
