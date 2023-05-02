import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user_drawer extends StatefulWidget {
  const user_drawer({Key? key}) : super(key: key);

  State<user_drawer> createState() => _user_drawerState();
}

class _user_drawerState extends State<user_drawer> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(child: Text("Hello Flutter ")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one_sharp),
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            Stack(
              children: [
                Container(height:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1356565274/photo/modern-abstract-wavy-background.jpg?s=612x612&w=0&k=20&c=No67IAf0B1P6THxPiU2zI9zPVp6J6wEuf_8zEs3iHKw="),fit: BoxFit.cover)),),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage("https://images.news18.com/ibnlive/uploads/2022/11/pooja-16676522914x3.jpg"),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pooja",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            Text(
                                "poojahegde@gmail.com",
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(color: Colors.black,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('de');
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.home,color: Colors.white,),
                          Text("Home",
                          style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.person,color: Colors.white,),
                          Text("Profile Detail",
                            style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.all_inbox,color: Colors.white,),
                          Text("All Inboxes",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ) ,
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.send,color: Colors.white,),
                          Text("Sent",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ) ,
                    Divider(color: Colors.black),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.schedule,color: Colors.white,),
                          Text("Schedule",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
