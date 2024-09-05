import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Counter App',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _increment,
                  label: Text('Increment'),
                  icon: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                      elevation: 2),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                    onPressed: _decrement,
                    label: Text('Decrement'),
                    icon: Icon(Icons.remove),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent, // Background color
                      foregroundColor: Colors.white, // Text and icon color
                      elevation: 2, // Shadow color
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
