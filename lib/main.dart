import 'package:flutter/material.dart';
import 'package:hotstar/firstpage.dart';

void main() {
  runApp(MaterialApp(
    home: hotstar(),
  ));
}

class hotstar extends StatefulWidget {
  const hotstar({Key? key}) : super(key: key);

  @override
  State<hotstar> createState() => _hotstarState();
}

class _hotstarState extends State<hotstar> {
  @override
  void initState() {
    super.initState();
    gonext();
  }
  gonext() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return firstpage();
    },));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("logo/img.png", fit: BoxFit.cover),
      ),
    );
  }
}
