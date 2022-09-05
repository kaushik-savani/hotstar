import 'package:flutter/material.dart';

class thirdpage extends StatefulWidget {
  List<String> temp;
  int index;

  thirdpage(this.temp, this.index);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Image(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
            image: AssetImage(widget.temp[widget.index])));
  }
}
