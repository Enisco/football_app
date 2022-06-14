import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/search_teams_nation/search_teams.dart';

TextEditingController amountController = TextEditingController();
TextEditingController emailController = TextEditingController();

class SkrillPaymentScreen extends StatefulWidget {
  const SkrillPaymentScreen({Key? key}) : super(key: key);

  @override
  State<SkrillPaymentScreen> createState() => _SkrillPaymentScreenState();
}

class _SkrillPaymentScreenState extends State<SkrillPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 75, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Skrill',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 18,
          ),
        ),
      ),
      //------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, size.width * 0.05, 0),
                  child: Text(
                    'Nigeria',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 20,
            ),
            //--------------------------------------------------------------

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Deposit Currency (\$)',
                    style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(10, size.height / 40, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.2,
                  ),
                ),
                width: size.width * 0.9,
                height: size.height / 15,
                child: Text(
                  'United States Dollars (USD)',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                )),
            SizedBox(
              height: size.height / 30,
            ),
            //--------------------------------------------------------------

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Deposit Amount',
                    style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1.2,
                ),
              ),
              width: size.width * 0.9,
              height: size.height / 15,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.7,
                    height: size.height / 15,
                    child: TextField(
                      keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      controller: amountController,
                      cursorColor: Colors.black45,
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "",
                        hintStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.black38,
                        ),
                        contentPadding: const EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.19,
                    child: Center(
                      child: Text(
                        'USD 5',
                        style: TextStyle(
                          color: Colors.black26,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //--------------------------------------------------------------

            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.05, 15, size.width * 0.05, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AddAmountButtonsWidget(
                    additionalValue: 0,
                    additionalValueText: 'Clear',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 1,
                    additionalValueText: '+1',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 2,
                    additionalValueText: '+2',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 3,
                    additionalValueText: '+3',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 5,
                    additionalValueText: '+5',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            //---------------------------------------------------------------------------------------------------------

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Email Address',
                    style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // padding: EdgeInsets.fromLTRB(10, size.height / 40, 0, 0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1.2,
                ),
              ),
              width: size.width * 0.9,
              height: size.height / 15,
              child: TextField(
                controller: emailController,
                cursorColor: Colors.black45,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email address",
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black38,
                  ),
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 25,
            ),
            //--------------------------------------------------------------

            Container(
              color: Color.fromRGBO(1, 135, 73, 1),
              height: size.height / 19,
              width: size.width * 0.9,
              child: TextButton(
                child: Text(
                  'DEPOSIT',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Roboto',
                    // fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchTeamsScreen()),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height / 25,
            ),
            //--------------------------------------------------------------

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Deposit History',
                    style: TextStyle(
                      // color: Color.fromRGBO(142, 142, 142, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------------------------------------

class AddAmountButtonsWidget extends StatefulWidget {
  final int additionalValue;
  final String additionalValueText;

  const AddAmountButtonsWidget({
    required this.additionalValue,
    required this.additionalValueText,
  });

  @override
  State<AddAmountButtonsWidget> createState() => _AddAmountButtonsWidgetState();
}

class _AddAmountButtonsWidgetState extends State<AddAmountButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        InkWell(
          child: Container(
            height: size.height / 25,
            width: size.width * 0.15,
            color: blueGreyColor,
            child: TextButton(
              child: Text(
                widget.additionalValueText,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                if (widget.additionalValue == 0 ||
                    amountController.text == ',' ||
                    amountController.text == '.') {
                  setState(() {
                    amountController.text = '';
                  });
                }
                if (amountController.text == '') {
                  setState(() {
                    int amountInt = 0;
                    amountInt = amountInt + widget.additionalValue;
                    amountController.text = amountInt.toString();
                  });
                } else {
                  setState(() {
                    int amountInt = int.parse(amountController.text);
                    amountInt = amountInt + widget.additionalValue;
                    amountController.text = amountInt.toString();
                  });
                }
              },
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
