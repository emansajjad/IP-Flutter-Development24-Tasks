import 'package:counter_app/summary.dart'; // Ensure this is the correct path for the summary screen
import 'package:flutter/material.dart';

class CForm extends StatefulWidget {
  @override
  _CFormState createState() => _CFormState();
}

class _CFormState extends State<CForm> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Form',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.greenAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.greenAccent,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.greenAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.greenAccent,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: message,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Write a message here!",
                prefixIcon: Icon(Icons.message),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.greenAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.redAccent.shade100,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.greenAccent,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent.shade200,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  String Pname = name.text;
                  String Pmail = email.text;
                  String Pmsg = message.text;

                  print("Name: $Pname, Email: $Pmail, Message: $Pmsg");

                  if (Pname.isEmpty || Pmail.isEmpty || Pmsg.isEmpty) {
                    print("Form Is Not Submitted");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.redAccent.shade200,
                        content: Text(
                          'Please Enter Required Values',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    );
                  } else {
                    print("Form Submitted Successfully");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.greenAccent,
                        content: Text(
                          'Form Submitted!!!',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SummaryScreen(
                          name: Pname,
                          email: Pmail,
                          message: Pmsg,
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
