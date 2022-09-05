import 'package:flutter/material.dart';
import 'package:hotstar/baseclass.dart';
import 'package:hotstar/secondpge.dart';
import 'package:hotstar/thirdpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hotstar"),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    height: 100,
                  ),
                  //continue watching
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(0);
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        baseclass().choiselist[0],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return thirdpage(baseclass.movies, index);
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    baseclass.movies[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        );
                      },
                      itemCount: baseclass.movies.length,
                    ),
                  ),

                  //Popular show
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(1);
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        baseclass().choiselist[1],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.topLeft,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return thirdpage(baseclass.popularshows, index);
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    baseclass.popularshows[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        );
                      },
                      itemCount: baseclass.popularshows.length,
                    ),
                  ),

                  //watchlist
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(2);
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        baseclass().choiselist[2],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return thirdpage(baseclass.watchlist, index);
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    baseclass.watchlist[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        );
                      },
                      itemCount: baseclass.watchlist.length,
                    ),
                  ),

                  //latest & trending
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(3);
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        baseclass().choiselist[3],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return thirdpage(baseclass.latest, index);
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    baseclass.latest[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        );
                      },
                      itemCount: baseclass.latest.length,
                    ),
                  ),

                  //popular movies
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(4);
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        baseclass().choiselist[4],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return thirdpage(
                                    baseclass.popularmovies, index);
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    baseclass.popularmovies[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        );
                      },
                      itemCount: baseclass.popularmovies.length,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
