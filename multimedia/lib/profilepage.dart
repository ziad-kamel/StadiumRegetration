import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwich = false;
  bool isStared1 = false;
  bool isStared2 = false;
  bool isStared3 = false;
  bool isStared4 = false;
  bool isStared5 = false;
  Icon ne = Icon(
    Icons.group_remove,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('images/5.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              color: Color.fromRGBO(35, 103, 81, 0.348),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Text('Name: CR7',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.teal[50])),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  style: const ButtonStyle(
                                      iconColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  child: isSwich
                                      ? ne
                                      : Icon(
                                          Icons.group_add,
                                          color: Colors.white,
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      isSwich = !isSwich;
                                    });
                                  }),
                              TextButton(
                                  style: const ButtonStyle(
                                      iconColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  child: Icon(
                                    Icons.message,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text('Posstion: st',
                            style: TextStyle(
                                fontSize: 20, color: Colors.teal[50])),
                      ),
                      Text('Age: 38',
                          style:
                              TextStyle(fontSize: 20, color: Colors.teal[50])),
                      Row(
                        children: [
                          Text('Rating:',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.teal[50])),
                          TextButton(
                              style: const ButtonStyle(
                                  iconColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: isStared1
                                  ? Icon(
                                      Icons.star,
                                      color: Colors.amberAccent[400],
                                    )
                                  : Icon(Icons.star_border_outlined),
                              onPressed: () {
                                setState(() {
                                  isStared1 = !isStared1;
                                });
                              }),
                          TextButton(
                              style: const ButtonStyle(
                                  iconColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: isStared2
                                  ? Icon(
                                      Icons.star,
                                      color: Colors.amberAccent[400],
                                    )
                                  : Icon(Icons.star_border_outlined),
                              onPressed: () {
                                setState(() {
                                  isStared1 = isStared2 = !isStared2;
                                });
                              }),
                          TextButton(
                              style: const ButtonStyle(
                                  iconColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: isStared3
                                  ? Icon(
                                      Icons.star,
                                      color: Colors.amberAccent[400],
                                    )
                                  : Icon(Icons.star_border_outlined),
                              onPressed: () {
                                setState(() {
                                  isStared1 =
                                      isStared2 = isStared3 = !isStared3;
                                });
                              }),
                          TextButton(
                              style: const ButtonStyle(
                                  iconColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: isStared4
                                  ? Icon(
                                      Icons.star,
                                      color: Colors.amberAccent[400],
                                    )
                                  : Icon(Icons.star_border_outlined),
                              onPressed: () {
                                setState(() {
                                  isStared1 = isStared2 =
                                      isStared3 = isStared4 = !isStared4;
                                });
                              }),
                          TextButton(
                              style: const ButtonStyle(
                                  iconColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              child: isStared5
                                  ? Icon(
                                      Icons.star,
                                      color: Colors.amberAccent[400],
                                    )
                                  : Icon(Icons.star_border_outlined),
                              onPressed: () {
                                setState(() {
                                  isStared1 = isStared2 = isStared3 =
                                      isStared4 = isStared5 = !isStared5;
                                });
                              }),
                        ],
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            'images/4.png',
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
