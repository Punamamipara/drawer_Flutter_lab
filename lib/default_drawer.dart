import 'package:flutter/material.dart';

class default_drawer extends StatefulWidget {
  const default_drawer({Key? key}) : super(key: key);

  State<default_drawer> createState() => _default_drawerState();
}

class _default_drawerState extends State<default_drawer> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Default Drawer"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello Page"),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
         child:  Column(
           children: [
             const UserAccountsDrawerHeader(
              accountEmail: Text("poojahegade@gmail.com"),
              accountName: Text("Pooja"),decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1356565274/photo/modern-abstract-wavy-background.jpg?s=612x612&w=0&k=20&c=No67IAf0B1P6THxPiU2zI9zPVp6J6wEuf_8zEs3iHKw="),fit: BoxFit.cover),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.news18.com/ibnlive/uploads/2022/11/pooja-16676522914x3.jpg"),
              ),
        ),
             Divider(),
             TextButton(
               onPressed: () {
                 Navigator.of(context).pushNamed('de');
               },
               child: Row(
                 children: const [
                   Icon(Icons.home),
                   Text("Home"),
                 ],
               ),
             ),
             Divider(),
             TextButton(
               onPressed: () {},
               child: Row(
                 children: const [
                   Icon(Icons.person),
                   Text("Profile Detail"),
                 ],
               ),
             ),
             Divider(),
             TextButton(
               onPressed: () {},
               child: Row(
                 children: const [
                   Icon(Icons.all_inbox),
                   Text("All Inboxes"),
                 ],
               ),
             ) ,
             Divider(),
             TextButton(
               onPressed: () {},
               child: Row(
                 children: const [
                   Icon(Icons.send),
                   Text("Sent"),
                 ],
               ),
             ) ,
             Divider(),
             TextButton(
               onPressed: () {},
               child: Row(
                 children: const [
                   Icon(Icons.schedule),
                   Text("Schedule"),
                 ],
               ),
             )
           ],
         ),

      ),
    );
  }
}
