
import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  Widget profileAndName = Expanded(
    child: Row(
      children: [
        Text("profile photo"),
        Column(
          children: const [
            Text("Hi Bob!",
              style: TextStyle(
                color: Colors.black,
                fontFamily: CupertinoIcons.iconFont,
                fontSize: 34.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Purweb, Design Department")
          ],
        ),
      ],
    ),
  );
  Widget addRequestAndTitle = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("My Requests"),
      // SizedBox(width: 450,),
      IconButton(onPressed: () {} , icon: Icon(Icons.add), iconSize: 45, color: Colors.deepPurple,)
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: const Offset(0,3)
                    )
                  ]
              ),

              child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.grey,))),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          const  Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: Icon(Icons.more_vert_rounded, color: Colors.grey,),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const   SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 65.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Hi, Bob", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  void nothing() {}
}
