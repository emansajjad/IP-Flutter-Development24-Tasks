import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  final String name;
  final String email;
  final String message;

  SummaryScreen(
      {required this.name, required this.email, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary Screen"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 28,
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 24),
                children: <TextSpan>[
                  TextSpan(
                      text: 'My Name is: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "$name\n\n",
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  ),
                  TextSpan(
                      text: 'My Email Address is: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "$email\n\n",
                    style: TextStyle(fontSize: 30, color: Colors.redAccent),
                  ),
                  TextSpan(
                      text: 'Message: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "$message",
                    style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
