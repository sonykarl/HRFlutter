import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 4,
                                offset: const Offset(0, 3))
                          ]),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
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
                                offset: const Offset(0, 3))
                          ]),
                      child: Center(
                          child: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.grey,
                      ))),
                ),
              ],
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 65.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Hi, Bob!",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Center(
                              child: Text(
                            "Purrweb, Design Department",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Requests",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("You tapped once");
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Card(
                  elevation: 12,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 12, left: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.deepPurple,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Days without Pay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text(
                                  "July ----------> 0/31",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: cardWidget(Colors.pinkAccent, "vacation", 28, 28,
                              Icons.ice_skating),
                        ),
                        cardWidget(
                            Colors.deepPurple, "sick", 28, 28, Icons.icecream)
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: cardWidget(Colors.deepPurple, "from house", 28, 28,
                              Icons.book),
                        ),
                        cardWidget(Colors.deepPurple, "day off", 28, 28,
                            Icons.access_alarm)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardWidget(Color color, String cardTitle, int daysToGo, int daysLeft,
      IconData icon) {
    return Container(
      height: 180,
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(cardTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    daysToGo.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 3,
                    height: 23,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(daysLeft.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 28))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
