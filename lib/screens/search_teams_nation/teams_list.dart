// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

bool selected = false;

class TeamDataWidget extends StatefulWidget {
  final String teamName;
  final String teamLogo;

  const TeamDataWidget({
    required this.teamName,
    required this.teamLogo,
  });

  @override
  State<TeamDataWidget> createState() => _TeamDataWidgetState();
}

class _TeamDataWidgetState extends State<TeamDataWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(size.width * 0.05),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          width: size.width,
          height: size.height / 15,
          child: ListTile(
            // leading: Icon(CupertinoIcons.sportscourt),
            leading: Image(
              image: AssetImage(widget.teamLogo),
              width: size.height / 24,
              height: size.height / 24,
            ),
            title: Text(
              widget.teamName,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: IconButton(
              color: !selected ? Colors.black45 : Colors.red,
              icon: Icon(!selected ? Icons.favorite_border : Icons.favorite),
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
            ),
          ),
        ),
        Container(
          width: size.width * 0.9,
          height: 2,
          color: blueGreyColor,
        ),
      ],
    );
  }
}

class teamData {
  String teamNameText = '';
  String teamLogoText = '';

  teamData({required this.teamNameText, required this.teamLogoText});
}

final List<teamData> teamNameAndLogoList = [
  teamData(teamNameText: "Bayern Munich", teamLogoText: "images/Bayern.png"),
  teamData(teamNameText: "Paris Saint German", teamLogoText: "images/psg.png"),
  teamData(teamNameText: "Chelsea", teamLogoText: "images/Chelsea.png"),
  teamData(teamNameText: "Manchester City", teamLogoText: "images/mancity.png"),
  teamData(teamNameText: "Barcelona", teamLogoText: "images/Barcelona.png"),
  teamData(teamNameText: "Juventus", teamLogoText: "images/Juventus.png"),
  teamData(teamNameText: "Bayern Munich", teamLogoText: "images/Bayern.png"),
  teamData(teamNameText: "Paris Saint German", teamLogoText: "images/psg.png"),
  teamData(teamNameText: "Chelsea", teamLogoText: "images/Chelsea.png"),
  teamData(teamNameText: "Manchester City", teamLogoText: "images/mancity.png"),
  teamData(teamNameText: "Barcelona", teamLogoText: "images/Barcelona.png"),
  teamData(teamNameText: "Juventus", teamLogoText: "images/Juventus.png"),
  teamData(teamNameText: "Bayern Munich", teamLogoText: "images/Bayern.png"),
  teamData(teamNameText: "Paris Saint German", teamLogoText: "images/psg.png"),
  teamData(teamNameText: "Chelsea", teamLogoText: "images/Chelsea.png"),
  teamData(teamNameText: "Manchester City", teamLogoText: "images/mancity.png"),
  teamData(teamNameText: "Barcelona", teamLogoText: "images/Barcelona.png"),
  teamData(teamNameText: "Juventus", teamLogoText: "images/Juventus.png"),
];
