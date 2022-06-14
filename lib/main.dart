import 'package:flutter/material.dart';
import 'package:football_app/screens/logout/logout_confirmtn.dart';
import 'package:football_app/screens/payment%20screens/paystack_flutwave.dart';
import 'package:football_app/search_teams_nation/search_teams.dart';

import 'screens/payment screens/addBankAcc.dart';
import 'screens/payment screens/netellerWithdrawal.dart';
import 'screens/payment screens/skrill_deposit.dart';

void main() {
  runApp(const MyFootballApp());
}

class MyFootballApp extends StatelessWidget {
  const MyFootballApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectScreen(),
      // home: const FlutterwaveGateway(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Screen',
        ),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonToPageWidget(pageIndex: 0, pageTitle: 'Search Teams Screen'),
            ButtonToPageWidget(
                pageIndex: 1, pageTitle: 'Skrill Deposit Screen'),
            ButtonToPageWidget(pageIndex: 2, pageTitle: 'Add Bank Account'),
            ButtonToPageWidget(
                pageIndex: 3, pageTitle: 'Neteller Withdrawal Screen'),
            ButtonToPageWidget(
                pageIndex: 4, pageTitle: 'Paystack/Flutterwave Gateways'),
            ButtonToPageWidget(pageIndex: 5, pageTitle: 'Logout Alert'),
          ],
        ),
      ),
    );
  }
}

List Pages = [
  SearchTeamsScreen(),
  SkrillPaymentScreen(),
  AddBankAccount(),
  NetellerWithdrawalScreen(),
  PayStackGateway(),
  LogOutConfirmation(),
];

class ButtonToPageWidget extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;

  const ButtonToPageWidget({
    required this.pageIndex,
    required this.pageTitle,
  });

  @override
  State<ButtonToPageWidget> createState() => _ButtonToPageWidgetState();
}

class _ButtonToPageWidgetState extends State<ButtonToPageWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: Colors.black26,
          width: size.width * 0.7,
          height: size.height / 20,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Pages[widget.pageIndex]),
              );
            },
            child: Text(
              widget.pageTitle,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
