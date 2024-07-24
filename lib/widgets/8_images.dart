import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class myImages extends StatelessWidget {
  const myImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child:
          CachedNetworkImage(
              imageUrl: "https://th.bing.com/th/id/R.ea4a89651702036a257428f37a33ae8b?rik=wZJ4rMKBRKtqaQ&pid=ImgRaw&r=0",
          placeholder: (context, url) => const Center(
              child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageBuilder: (context, imageProvider)=> Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 5
                )
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: imageProvider,
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),),

        // Container(
        //   height: 300,
        //   width: 250,
        //   decoration: BoxDecoration(color: Colors.red,
        //     borderRadius: BorderRadius.circular(15),
        //     boxShadow: [
        //       BoxShadow(
        //         blurRadius: 10,
        //         spreadRadius: 5,
        //       )
        //     ],
        //     image:
        //       DecorationImage(image: AssetImage('assets/download.jfif'),
        //       fit: BoxFit.cover),
        //
        //
        //     DecorationImage(image: NetworkImage("https://th.bing.com/th/id/R.ea4a89651702036a257428f37a33ae8b?rik=wZJ4rMKBRKtqaQ&pid=ImgRaw&r=0",
        //     ),
        //         fit: BoxFit.cover),
        //   ),
        //
        //     child: CachedNetworkImage(
        //     imageUrl: "https://th.bing.com/th/id/R.ea4a89651702036a257428f37a33ae8b?rik=wZJ4rMKBRKtqaQ&pid=ImgRaw&r=0",
        //     fit: BoxFit.cover,
        //     placeholder: (context, url) => Center(child: CircularProgressIndicator()),
        //     errorWidget:(context, url, error) => Icon(Icons.error) ,),
        //
        //   ),
      ),
    );
  }
}
