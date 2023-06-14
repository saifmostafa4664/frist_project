import 'package:flutter/material.dart';

void main() => runApp(MyBankApp());

class MyBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bank App',
      home: MyHomePage(title: 'My Bank App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _balance = 0.0;

  void _deposit(double amount) {
    setState(() {
      _balance += amount;
    });
  }

  void _withdraw(double amount) {
    setState(() {
      _balance -= amount;
    });
  }

  void _inquiry() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Account Balance"),
            content: Text("Your current balance is: $_balance"),
            actions: <Widget>[
              ElevatedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Balance:',
            ),
            Text(
              '\$$_balance',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                _deposit(100.0);
              },
              child: Text("Deposit"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _withdraw(50.0);
              },
              child: Text("Withdraw"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _inquiry();
              },
              child: Text("Inquiry"),
            ),
          ],
        ),
      ),
    );
  }
}
