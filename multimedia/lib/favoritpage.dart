import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multimedia/stadiumpage.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  //variables
  bool isSwich = true;
  bool isStared = true;
  Icon ne = Icon(Icons.favorite_outlined);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('images/5.jpg'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
              child: Text(
                'Favorite Stadiums',
                style: TextStyle(
                  color: Color.fromARGB(201, 84, 179, 152),
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(113, 129, 150, 0.362),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const StadiumPage();
                        }));
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/1.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Stadium Name',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Address',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  style: const ButtonStyle(
                                      iconColor: MaterialStatePropertyAll(
                                          Colors.white)),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(113, 129, 150, 0.362),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const StadiumPage();
                        }));
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/1.jpg'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Stadium Name',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Address',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  style: const ButtonStyle(
                                      iconColor: MaterialStatePropertyAll(
                                          Colors.white)),
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
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
