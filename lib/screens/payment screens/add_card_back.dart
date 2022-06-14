import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextEditingController cardNumberController = TextEditingController();
TextEditingController bankNameController = TextEditingController();
TextEditingController cardHolderNameController = TextEditingController();
TextEditingController expiryDateController = TextEditingController();

class AddCardBack extends StatefulWidget {
  const AddCardBack({Key? key}) : super(key: key);

  @override
  State<AddCardBack> createState() => _AddCardBackState();
}

class _AddCardBackState extends State<AddCardBack> {
  bool _saveCardOption = false;

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
          'Add Card',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 18,
          ),
        ),
      ),
      //-------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 0),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add a new card',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 0, 10, 1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              //---------------------------------------------------------

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: size.width / 10,
                    height: size.height / 20,
                    child: Image(image: AssetImage('images/visa.png')),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: size.width / 10,
                    height: size.height / 20,
                    child: Image(image: AssetImage('images/mastercard.png')),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: size.width / 10,
                    height: size.height / 20,
                    child: Image(image: AssetImage('images/verve.png')),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              //---------------------------------------------------------

              Container(
                padding: EdgeInsets.all(0),
                width: size.width,
                height: size.height / 4,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 181, 202, 233),
                  // color: blueGreyColor,
                  image: DecorationImage(
                    image: AssetImage('images/ccback.png'),
                    fit: BoxFit.fill,
                  ),
                ),

                //-----------------------Card Stacks-------------------------

                //-------------------------------
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height / 10.8,
                      left: size.width / 2.05,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        width: size.width * 0.9,
                        height: size.height / 20,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: expiryDateController,
                          cursorColor: Colors.white,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "000",
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 2,
                            ),
                            contentPadding: const EdgeInsets.all(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //-----------------------Switch--------------------------

              SizedBox(
                height: size.height / 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Save Card details',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Switch(
                    value: _saveCardOption,
                    onChanged: (bool newValue) {
                      setState(
                        () {
                          _saveCardOption = newValue;
                          print(_saveCardOption);
                        },
                      );
                    },
                  )
                ],
              ),
              //---------------------------Next--------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: Color.fromRGBO(142, 142, 142, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.right_chevron,
                    size: 15,
                    color: Color.fromRGBO(142, 142, 142, 1),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
