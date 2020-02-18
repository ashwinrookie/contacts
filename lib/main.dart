import 'package:flutter/material.dart';
import 'package:newcallapp/services/calls_and_messages_service.dart';
import 'package:newcallapp/services/service_locator.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:ussd/ussd.dart';
import 'dart:async';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
   String akshay = "+91 8289875795";
   String ashwin = "+91 9003014490";
   String avillie = "+91 7350890889";
   String divakar = "+91 9841355882";
   String hemanth = "+91 9940534531";
   String hamid = "+91 8148598005";
   String mani = "+91 7904756151";

   Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                               Hamid                              ",
              ),
              onPressed: () => launchUssd(hamid),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                              Akshay                              ",
              ),
              onPressed: () => launchUssd(akshay),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,   
              child: Text(
                "                              Ashwin                              ",
              ),
              onPressed: () => launchUssd(ashwin),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                               Avillie                               ",
              ),
              onPressed: () => launchUssd(avillie),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                              Divakar                              ",
              ),
              onPressed: () => launchUssd(divakar),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                             Hemanth                             ",
              ),
              onPressed: () => launchUssd(hemanth),
            ),
            SizedBox(height: 5),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text(
                "                                 Mani                                 ",
              ),
              onPressed: () => launchUssd(mani),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}