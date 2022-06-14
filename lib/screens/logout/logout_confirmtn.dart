import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LogOutConfirmation extends StatefulWidget {
  const LogOutConfirmation({Key? key}) : super(key: key);

  @override
  State<LogOutConfirmation> createState() => _LogOutConfirmationState();
}

class _LogOutConfirmationState extends State<LogOutConfirmation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          color: blueGreyColor,
          child: Container(
            color: blueGreyColor,
            width: size.width * 0.8,
            height: size.height / 15,
            child: TextButton(
              style: ButtonStyle(
                  // backgroundColor:,
                  ),
              child: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 34, 24, 24)),
              ),
              onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.none,
                  title: "Logout?",
                  desc: "Are you sure you want to log out?",
                  buttons: [
                    DialogButton(
                      color: Colors.white,
                      radius: const BorderRadius.all(Radius.circular(5)),
                      child: Text(
                        "LOGOUT",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      onPressed: () => { //ENIOLAsodiq1
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectScreen()),
                        ),
                      },
                      width: 20,
                    ),
                    DialogButton(
                      color: Colors.white,
                      child: Text(
                        "CANCEL",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 20,
                    )
                  ],
                ).show();
              },
            ),
          ),
        ),
      ),
    );
  }
}
