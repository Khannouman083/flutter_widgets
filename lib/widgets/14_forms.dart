import 'package:flutter/material.dart';

class myForm extends StatefulWidget {
  const myForm({super.key});

  @override
  State<myForm> createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  String name = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trySubmit(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      submitform();
    }
    else{
      print("Error");
    }
  }
  submitform(){
    print(name);
    print(email);
    print(password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        backgroundColor: Colors.red,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  key: const ValueKey('name'),
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return "Name should not be empty";
                    }
                    else {
                      return null;
                    }
                  },
                   onSaved: (value){
                     name = value!;
                   },
                ),
                TextFormField(
                  key: const ValueKey('email'),
                  decoration: const InputDecoration(
                      labelText: "Email",
                  ),
                  validator: (value){
                    if(value.toString().contains("@")){
                      return null;
                    }
                    else {
                      return "Email should be valid";

                    }
                  },
                  onSaved: (value){
                    email = value!;
                  },
                ),
                TextFormField(
                  key: const ValueKey('Password'),
                  decoration: const InputDecoration(
                      labelText: "Password",
                  ),
                  validator: (value){
                    if(value.toString().length<6){
                      return "Password must be be 6 characters";
                    }
                    else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    password = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(

                    onPressed: (){
                         trySubmit();
                    },
                    child: const Text("Submit Form"))
              ],
            ),
          )),
    );

  }
}

