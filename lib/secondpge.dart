import 'package:flutter/material.dart';
import 'package:hotstar/baseclass.dart';
import 'package:hotstar/thirdpage.dart';

class secondpage extends StatefulWidget {
  int index;

  secondpage(this.index);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List<String> temp = [];

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      temp = baseclass.movies;
    } else if (widget.index == 1) {
      temp = baseclass.popularshows;
    } else if (widget.index == 2) {
      temp = baseclass.watchlist;
    } else if (widget.index == 3) {
      temp = baseclass.latest;
    } else if (widget.index == 4) {
      temp = baseclass.popularmovies;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(baseclass().choiselist[widget.index]),
      ),
      body: Container(
        color: Colors.black,
        child: GridView.builder(
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return thirdpage(temp, index);
                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          temp[index],
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ));
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: temp.length,
        ),
      ),
    );
  }
}
