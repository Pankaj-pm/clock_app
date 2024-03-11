import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int maxLine = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () {

                },
                overlayColor: MaterialStatePropertyAll(Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.file_copy_sharp),
                    Text("File",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.file_copy_sharp),
                  Text("File",style: TextStyle(fontSize: 18),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.file_copy_sharp),
                  Text("File",style: TextStyle(fontSize: 18),),
                ],
              ),SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.file_copy_sharp),
                  Text("File",style: TextStyle(fontSize: 18),),
                ],
              ),SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.file_copy_sharp),
                  Text("File",style: TextStyle(fontSize: 18),),
                ],
              ),SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.file_copy_sharp),
                  Text("File",style: TextStyle(fontSize: 18),),
                ],
              ),
            ],
          ),
        ),
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
            onPressed: () {},
            style: ButtonStyle(
                // overlayColor: MaterialStatePropertyAll(Colors.red),
                textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 12))),
            child: Text("Click"),
          ),
          ElevatedButton(
            onPressed: () {},

            child: Text("Click"),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
          OutlinedButton(onPressed: () {}, child: Text("Click")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
