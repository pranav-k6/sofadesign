import 'package:flutter/material.dart';
import 'package:sofa/data.dart';
import 'package:sofa/sofa.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 223, 223),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("data1"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text("data2"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text("data3"),
              onTap: () {
                
              },
            )
          ],
        ),
        
        
            
              // child: DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 204, 212, 216),
                  
                  
              //   ),
                
              //   child: Center(
              //     child: Text("Menu",
              //     style: TextStyle(
              //       fontWeight: FontWeight.w600,
              //       fontSize: 25
              //     ),),
              //   ),
              //   ),
          
              // ListTile(
              //   title: Text("setting",
              //   style: TextStyle(
              //     fontWeight: FontWeight.w600,
              //     fontSize: 20
              //   ),),
              // ),
              // ListTile(
              //   title: Text("home",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.w600
              //   ),),
              // )
          // ],
      
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Find the home\nfurniture",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          // Drawer(
          //   width: 50,
          // )
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  size: 50,
                ));
          })  
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 159, 175),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 200, 206, 210),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/sofa-with-armrest-svgrepo-com 1.png"),
                          fit: BoxFit.scaleDown)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 200, 206, 210),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:
                              AssetImage("assets/tv-solid-svgrepo-com 1.png"),
                          fit: BoxFit.scaleDown)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 200, 206, 210),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/table-lights-svgrepo-com 1.png"),
                          fit: BoxFit.scaleDown)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 200, 206, 210),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: GridView.builder(
                itemCount: datases.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    indexdata: datases[index],
                                  )));
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 160,
                          height: 600,
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 30,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 500,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  )),
                              Positioned(
                                left: 10,
                                top: 15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 117,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      datases[index].img))),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: datases[index].color1,
                                        )
                                      ],
                                    ),
                                    Text( 
                                      datases[index].name,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: Colors.amber,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: Colors.blue,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "¥2500",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.grey,
                                          child: Icon(Icons.add),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
