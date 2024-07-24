import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class myImagePicker extends StatefulWidget {
  const myImagePicker({super.key});

  @override
  State<myImagePicker> createState() => _myImagePickerState();
}

class _myImagePickerState extends State<myImagePicker> {
  XFile? file;
  List <XFile>? files = [];
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker"),
      backgroundColor: Colors.red,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
                child: Center(
                 child: file == null ? const Text ("Image not picked"): Image.file(File(file!.path,),fit: BoxFit.cover,),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                    onPressed: () async{
                      final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        file = photo;
                      });
                      print("Image Picked");
                      print(photo!.path);
                    },
                    child: const Text("Pick Image",style: TextStyle(color: Colors.white),)),
                ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red),
                    ),
                    onPressed: () async{
                      final List<XFile> photos = await _picker.pickMultiImage();
                      setState(() {
                        files = photos;
                      });
                      print("Images Picked");
                      for(int i=0; i<files!.length; i++){
                        print(files![i].path);
                      }

                    },
                    child: const Text("Pick Images", style: TextStyle(color: Colors.white),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

