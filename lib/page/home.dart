import 'package:flutter/material.dart';
import 'package:navigator/page/next.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>NextPage()), (_)=> false);
              // Navigator.of(context).pushNamedAndRemoveUntil("/next",(_)=> false);
            },
            child: Text("Next")),
      ),
    );
  }
}
