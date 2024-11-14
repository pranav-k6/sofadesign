import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sofa/cam.dart';
import 'package:sofa/gallary.dart';

class Scanner extends StatefulWidget {
  Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  final ImagePicker pic = ImagePicker();

  XFile? imgee;

  Future<void> popUp(context) async {
    return showDialog(
        context: context,
        builder: (BuildContext contaxt) {
          return Dialog(
            child: Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 238, 243, 245),
              child: Column(
                children: [
                  Text(
                    "choose the file",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          gallary();
                          log(imgee.toString());
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          color: const Color.fromARGB(255, 62, 54, 54),
                          // child: imgee== null?
                          // Image.file(File(imgee!.path)):Text("Image Not Founded")
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          camera();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Gallary",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Camara",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){popUp(context);},tooltip: "Select a Image",child: Icon(Icons.add),),
        body: Center(
          child: imgee == null?
          Container(
           height: 400,
           width: MediaQuery.sizeOf(context).width,
           child: Center(child: Icon(Icons.error,size: 70,),),
          ):Image.file(File(imgee!.path))
        ),
      ),
    );
  }

  Future gallary() async {
    final XFile? image = await pic.pickImage(source: ImageSource.gallery);
    setState(() {
      imgee = image;
    });
  }

  Future camera() async {
    final XFile? photo = await pic.pickImage(source: ImageSource.camera);
    setState(() {
      imgee = photo;
    });
  }
}
