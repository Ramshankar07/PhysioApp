import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/screens/login_screen.dart';
import 'package:phone_verification/singlepla.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  final _auth = FirebaseAuth.instance;
  List<String> entries = <String>[
    'Arms work out',
    'chest workout',
    'flutter tutorial',
    'flutter tips',
    'flutter coding'
  ];
  List<String> urls = <String>[
    'https://www.youtube.com/watch?v=Y8KIp5_zeiM',
    'https://www.youtube.com/watch?v=af3dqyDiYdg',
    'https://www.youtube.com/watch?v=n7O3pXfENPU',
    'https://www.youtube.com/watch?v=d_m5csmrf7I',
    'https://www.youtube.com/watch?v=I0NBtFS_ibc',
    'https://www.youtube.com/watch?v=hDVZykwl13I&t=625s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physio Works',style: TextStyle(color: Colors.black87),),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    ),
         body: ListView.separated(
          padding: const EdgeInsets.all(8),
           itemCount: entries.length,
            itemBuilder: (BuildContext context, int index){
             return InkWell(
               child: Container(
               height: 120,

                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/bg1.png"),
                     fit: BoxFit.cover,
                   ),
                     borderRadius: BorderRadius.all(
                         Radius.circular(10)
                     )),//borderRadius: BorderRadius.all(Radius.circular(20))

                 child: Center(child: Text('${entries[index]}',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)),

                 ),
    onTap: () {
    print("Click event on Container");
    Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => singepla(url: urls[index])));
    },
    );
    },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
    ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await _auth.signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Icon(Icons.logout),

 ),
    );
  }
}
