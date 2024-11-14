import 'package:flutter/material.dart';

class ListStudy extends StatelessWidget {
  const ListStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("list view")
        ),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,$index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 90,
              width: double.infinity,
              color: const Color.fromARGB(255, 204, 73, 73),
              child: Center(child: Text("list view")),
            ),
          );
        }, 
      ),
    );
  }
}