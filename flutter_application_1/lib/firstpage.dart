import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              bottomsheet(context);
            },
            child: Text("Click here")),
      ),
    );
  }
}

Future<void> bottomsheet(BuildContext ctx) async {
  showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 500,
          color: Colors.red,
          child: ListView(
            children: [
              Center(child: Text("Hello")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: Text("close"))
            ],
          ),
        );
      });
}
