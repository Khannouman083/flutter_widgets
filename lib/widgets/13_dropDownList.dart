import 'package:flutter/material.dart';

class myDropDown extends StatefulWidget {
  const myDropDown({super.key});

  @override
  State<myDropDown> createState() => _myDropDownState();
}

class _myDropDownState extends State<myDropDown> {

  String? selectedValue = 'Select Item';
  List<String> myList = ['Select Item', "Item 1", "Item 2", "Item 3","Item 4", "Item 5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button"),
        backgroundColor: Colors.red,
      ),
       body: Center(
         child: SizedBox(
           height: 50,
           width: MediaQuery.of(context).size.width,
           child: Center(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: DropdownButton(
                 isExpanded: true,
                 value: selectedValue,
                   items: myList.map<DropdownMenuItem<String>>((String value){
                     return DropdownMenuItem(
                         value: value,
                         child: Text(value));
                   }).toList(),
                   onChanged: (String? newValue){
                     setState(() {
                       selectedValue=newValue;
                     });
                   }),
             ),
           ),
         ),
       ),
    );
  }
}

