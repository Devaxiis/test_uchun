import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {

              // Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/three");
            },
            child: Text("Next")),
      ),
    );
  }
}
