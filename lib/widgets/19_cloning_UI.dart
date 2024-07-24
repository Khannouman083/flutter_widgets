import 'package:flutter/material.dart';

class cloningUI extends StatelessWidget {
  const cloningUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                      height: 450,
                      // color: Colors.red,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            height: 400,

                                decoration: const BoxDecoration(
                                    // color: Colors.yellow,
                                  image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.YxzI-y8ycOFwUfiUC4B0tAHaLH?rs=1&pid=ImgDetMain"), fit: BoxFit.cover)

                                ),
                          )),
                          const Positioned(
                            bottom: 5,
                              right: 10,
                              child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.WpdSSqLf77UvxdNaMbTeIAHaE8?rs=1&pid=ImgDetMain"),
                            backgroundColor: Colors.green,
                          ))
                        ],
                      ),
                    ),
                ),

              ],
            ),
            const SizedBox(
              width: double.infinity,
              // color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Madrid City Tour for Designers", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30
                    ),),
                    Text("This is a random description of the topic",style: TextStyle(
                        fontSize: 15, fontStyle: FontStyle.italic
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    rowOption("524", Icons.favorite_rounded),
                    rowOption("732", Icons.upload),
                    rowOption("452", Icons.message),
                    rowOption("234", Icons.share)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(

                child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
            )
          ],
        ),
      ),
    );

  }
  Widget rowOption (String text, IconData icon){
    return Row(
    children: [
    Icon(icon),
    const SizedBox(width: 5,),
    Text(text, style: const TextStyle(fontSize: 18),),

    ],
    );
    }
}
