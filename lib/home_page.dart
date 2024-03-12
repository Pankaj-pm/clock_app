import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int maxLine = 2;
  bool isLoad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: SafeArea(
      //     child: Column(
      //       children: [
      //         InkWell(
      //           onTap: () {},
      //           overlayColor: MaterialStatePropertyAll(Colors.blue),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Icon(Icons.file_copy_sharp),
      //               Text(
      //                 "File",
      //                 style: TextStyle(fontSize: 18),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Icon(Icons.file_copy_sharp),
      //             Text(
      //               "File",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Icon(Icons.file_copy_sharp),
      //             Text(
      //               "File",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Icon(Icons.file_copy_sharp),
      //             Text(
      //               "File",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Icon(Icons.file_copy_sharp),
      //             Text(
      //               "File",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Icon(Icons.file_copy_sharp),
      //             Text(
      //               "File",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      drawer: NavigationDrawer(
        children: [
          // DrawerHeader(
          //   child: Text("Hello"),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Flutter"),
            accountEmail: Text("Flutter@gmail.com"),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text("A"),
                backgroundImage: NetworkImage("https://androidknowledge.com/wp-content/uploads/2022/10/navthumb.png"),
              ),
              CircleAvatar(
                child: Text("A"),
                backgroundImage: NetworkImage("https://androidknowledge.com/wp-content/uploads/2022/10/navthumb.png"),
              )
            ],
            currentAccountPicture: CircleAvatar(
              child: Text("A"),
              backgroundImage: NetworkImage("https://androidknowledge.com/wp-content/uploads/2022/10/navthumb.png"),
            ),
          ),
          Text("Hello"),
          Divider(),
          Text("Hello"),
        ],
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Material Design is a design language developed by Google in 2014. Expanding on the cards  that debuted in Google Now, Material Design uses more grid-based layouts, responsive animations and transitions, padding, and depth effects such as lighting and shadows",
            maxLines: maxLine,
            overflow: TextOverflow.ellipsis,
          ),
          InkWell(
            onTap: () {
              if (maxLine == 5) {
                maxLine = 1;
              } else {
                maxLine = 5;
              }
              setState(() {});
            },
            child: Text(
              maxLine == 5 ? "Read Less" : "Read More",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () async{
              isLoad = true;
              setState(() {});
              await Future.delayed(Duration(seconds: 3),() {

              },);
              isLoad = false;
              setState(() {});
            },
            style: ButtonStyle(
                // overlayColor: MaterialStatePropertyAll(Colors.red),
                textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 12))),
            child: Text("Click"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add),
                Text("Click"),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
          OutlinedButton(onPressed: () {}, child: Text("Click")),
          TextButton.icon(onPressed: () {}, icon: Icon(Icons.ac_unit), label: Text("Add")),
          ElevatedButton.icon(
              onPressed: () {},
              icon: SizedBox(
                height: 10,
                width: 10,
                child: CircularProgressIndicator(),
              ),
              label: Text("Add")),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            clipBehavior: Clip.antiAlias,
            child: isLoad
                ? Center(
                    child: CircularProgressIndicator(),

                  )
                : Image.network(
                    "https://androidknowledge.com/wp-content/uploads/2022/10/navthumb.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Duration d = Duration(seconds: 2);
          print(d.inHours);
          print("Order..");
          await Future.delayed(
            Duration(seconds: 3),
            () {
              print("Call after 3 sec");
            },
          );

          print("Order Completed");
        },
      ),
    );
  }
}
