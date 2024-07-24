import "package:flutter/material.dart";
import "package:thirty_days_thirty_widgets/functions/auth_functions.dart";

class EmailPassAuth extends StatefulWidget {
  const EmailPassAuth({super.key});

  @override
  State<EmailPassAuth> createState() => _EmailPassAuthState();
}

class _EmailPassAuthState extends State<EmailPassAuth> {
  bool isLogin = false;
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String password='';
  String username='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email and Password Authentication"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin ? TextFormField(

                key: Key("Username"),
                decoration: InputDecoration(
                  hintText: "Username"
                ),
                validator: (value){
                  if(value.toString().length < 3){
                     return "Username is small";
                  }
                  else {
                    return null;
                  }
                },
                onSaved: (value){
                  username = value!;
                },
              ): Container(),
              TextFormField(
                key: Key("Email"),
                decoration: InputDecoration(
                    hintText: "Email"
                ),
                validator: (value){
                  if(!(value.toString().contains("@"))){
                    return "Email is invalid";
                  }
                  else {
                    return null;
                  }
                },
                onSaved: (value){
                  email = value!;
                },
              ),
              TextFormField(
                key: Key("Password"),
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                validator: (value){
                  if(value.toString().length<6){
                    return "Password is short";
                  }
                  else {
                    return null;
                  }
                },
                onSaved: (value){
                  password = value!;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.cyan)
                    ),
                    onPressed: (){
                      if(_formkey.currentState!.validate()){
                        _formkey.currentState!.save();
                        isLogin? signIn(email, password):signup(email, password);
                      }
                    },
                    child:isLogin?Text("Log in") : Text('Sign up')
                ),
              ),
              TextButton(onPressed: (){
                setState(() {
                  isLogin  = !isLogin;
                });

              }, child: isLogin? Text("Don't have an account? Sign up") :Text("Already have an account? Log in"))

            ],
          ),
        ),
      ),
    );
  }
}

