import 'package:flutter/material.dart';
import 'package:sofa/bottombar.dart';
import 'package:sofa/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/virender-singh-hE0nmTffKtM-unsplash 1 (1).png"),
              fit: BoxFit.cover)
            ),
            child: 
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Find the\nbest home furniture for\n your room.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color:Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                 
                  InkWell
                  (
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 106, 130, 151),
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                  )
                ],
              ),
            ),
            
          ),
          
        ],
      ),
    );
  }
}