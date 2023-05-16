import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StadiumPage extends StatefulWidget {
  const StadiumPage({super.key});

  @override
  State<StadiumPage> createState() => _StadiumPageState();
}

class _StadiumPageState extends State<StadiumPage> {
  //variables
  bool isSwich = false;
  bool isStared1 = false;
  bool isStared2 = false;
  bool isStared3 = false;
  bool isStared4 = false;
  bool isStared5 = false;
  Icon ne = Icon(Icons.favorite_outlined);
  //func
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(87, 144, 144, 0.671),
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0, left: 0),
                child: Icon(
                  Icons.sports_soccer,
                  size: 30,
                ),
              ),
              Text(
                "5omasy",
                style: TextStyle(
                  color: Color.fromARGB(176, 1, 112, 55),
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                ),
              ),
            ],
          )),
      ////////////////////////////
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('images/5.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              color: Color.fromRGBO(56, 156, 89, 0.284),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Stadium Name',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.green[700])),
                        ),
                        Row(
                          children: [
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
                      ],
                    ),
                    Image.asset('images/1.jpg'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Openning Time'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('هلاهلاهلاهلا'),
                        Icon(Icons.location_on_rounded)
                      ],
                    ),
                    Text(
                      'Price',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: const ButtonStyle(
                              iconColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          child: isSwich
                              ? ne
                              : Icon(Icons.favorite_border_rounded),
                          onPressed: () {
                            setState(() {
                              isSwich = !isSwich;
                            });
                          }),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isSwich ? Colors.green : Colors.blue),
                      onPressed: () {
                        debugPrint('elevated button');
                      },
                      child: const Text(
                        'Book Now :)',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
