import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/payment%20screens/flutterwave_gateway.dart';
import 'package:football_app/search_teams_nation/search_teams.dart';

TextEditingController amountController = TextEditingController();
TextEditingController emailController = TextEditingController();

class PayStackGateway extends StatefulWidget {
  const PayStackGateway({Key? key}) : super(key: key);

  @override
  State<PayStackGateway> createState() => _PayStackGatewayState();
}

class _PayStackGatewayState extends State<PayStackGateway> {
  String dropdownvalue = 'No cards available';

  var registeredCards = [
    'No cards available',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 75, 1),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Paystack',
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select payment gateway',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 0, 10, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Nigeria',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 20,
            ),
            //--------------------------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.1, 0, 0, 0),
                  child: InkWell(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'PAYSTACK',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 75, 1),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 500,
                        ),
                        Container(
                          padding: EdgeInsets.all(0),
                          width: size.width / 5.5,
                          height: 2,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
                //----------------------------------------

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, size.width * 0.1, 0),
                  child: InkWell(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FlutterwaveGateway()),
                            );
                          },
                          child: Text(
                            'FLUTTERWAVE',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 500,
                        ),
                        Container(
                          padding: EdgeInsets.all(0),
                          width: size.width / 6,
                          height: 2,
                        )
                      ],
                    ),
                  ),
                )
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
                    'Deposit Amount (₦)',
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
                        'Min 100',
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
                    additionalValue: 100,
                    additionalValueText: '+100',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 200,
                    additionalValueText: '+200',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 300,
                    additionalValueText: '+300',
                  ),
                  AddAmountButtonsWidget(
                    additionalValue: 500,
                    additionalValueText: '+500',
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
                    'Card',
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
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 220, 240),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1.2,
                ),
              ),
              width: size.width * 0.9,
              height: size.height / 20,
              child: DropdownButton(
                dropdownColor: blueGreyColor,
                underline: SizedBox(
                  height: 0,
                  width: 0,
                ),
                value: dropdownvalue,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (String) {
                  setState(() {});
                },
                items: registeredCards.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            //--------------------------------------------------------------

            Container(
              color: Color.fromRGBO(1, 135, 73, 1),
              height: size.height / 19,
              width: size.width * 0.9,
              child: TextButton(
                child: Text(
                  'CONTINUE',
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
