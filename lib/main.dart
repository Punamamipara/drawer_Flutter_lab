import 'package:drawer_screen/default_drawer.dart';
import 'package:drawer_screen/user_draweer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true,),
      debugShowCheckedModeBanner: false,
      // home: Lab_6_1(),
      routes: {
        '/':(ctx)=>user_drawer(),
        'de':(ctx)=>default_drawer(),
      },
    ),
  );
}
// https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6K8nWTVDD5kNA6w-HPmAPe2R6S2uv5hf6NQ&usqp=CAU