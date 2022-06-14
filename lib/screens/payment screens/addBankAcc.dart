import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/search_teams_nation/search_teams.dart';

TextEditingController bankAccountController = TextEditingController();
TextEditingController bankNameController = TextEditingController();

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  String dropdownvalue = 'Savings';

  var accountTypes = [
    'Savings',
    'Current',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 75, 1),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Add Bank Account',
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
                    'Account Type',
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
                items: accountTypes.map((String items) {
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

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Bank Account Number',
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
              child: TextField(
                controller: bankAccountController,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black45,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Account Number",
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black38,
                  ),
                  contentPadding: const EdgeInsets.all(10.0),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            //--------------------------------------------------------------

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.05, 0, 0, 8),
                  child: Text(
                    'Bank Name',
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
              child: TextField(
                controller: bankNameController,
                cursorColor: Colors.black45,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Account Name",
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
                    'Withdrawal History',
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

            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.05, size.height * 0.005, size.width * 0.05, 0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HistoryButtonsWidget(
                      HistoryCategoryText: 'All',
                    ),
                    HistoryButtonsWidget(
                      HistoryCategoryText: 'Pending',
                    ),
                    HistoryButtonsWidget(
                      HistoryCategoryText: 'Successful',
                    ),
                    HistoryButtonsWidget(
                      HistoryCategoryText: 'Failed',
                    ),
                  ],
                ),
              ),
            ),
            //---------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------

class HistoryButtonsWidget extends StatefulWidget {
  final String HistoryCategoryText;

  const HistoryButtonsWidget({
    required this.HistoryCategoryText,
  });

  @override
  State<HistoryButtonsWidget> createState() => _HistoryButtonsWidgetState();
}

class _HistoryButtonsWidgetState extends State<HistoryButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: blueGreyColor,
          // borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(
            color: Colors.grey.shade500,
            width: 0.5,
          ),
        ),
        height: size.height / 25,
        width: size.width * 0.225,
        child: TextButton(
          child: Text(
            widget.HistoryCategoryText,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          onPressed: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}
