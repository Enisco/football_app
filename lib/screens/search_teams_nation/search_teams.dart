import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/search_teams_nation/teams_list.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

int _selectedIndex = 3;
final String assetName = 'assets/predict_symbol.svg';

class SearchTeamsScreen extends StatefulWidget {
  const SearchTeamsScreen({Key? key}) : super(key: key);

  @override
  State<SearchTeamsScreen> createState() => _SearchTeamsScreenState();
}

class _SearchTeamsScreenState extends State<SearchTeamsScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 198, 157, 1),
        // leading: const Icon(Icons.arrow_back),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
      ),
      //------------------------------------------------------------------

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(
            fontSize: size.width / 25,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w800),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        iconSize: size.width / 15,
        selectedFontSize: 18,
        unselectedFontSize: 18,
        unselectedItemColor: Colors.black26,
        unselectedLabelStyle:
            TextStyle(fontSize: size.width / 25, color: Colors.black26),
        //************************************************************************* */
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: size.width / 12,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.sportscourt,
              size: size.width / 12,
            ),
            label: 'Team',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/predict_symbol.png')),
            label: 'Predict',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chart_bar,
              size: size.width / 15,
            ),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            // icon: ImageIcon(
            //   AssetImage('images/profile_logo.png'),
            //   size: size.width / 9.5,
            // ),
            icon: CircleAvatar(
              backgroundColor: Colors.black45,
              child: Icon(Icons.person),
              radius: size.width / 25,
            ),
            label: 'Profile',
          ),
        ],
      ),
      //----------------------------------------------------------------------------------------
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),

          //searchBar
          Center(
            child: Container(
              padding: EdgeInsets.all(5),
              width: size.width * 0.9,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: blueGreyColor,
              ),
              child: OutlineSearchBar(
                cursorColor: Colors.black54,
                cursorHeight: 20.0,
                hintText: 'search team, competition or nation',
                hintStyle: TextStyle(
                    color: const Color.fromRGBO(139, 144, 160, 1),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                searchButtonIconColor: const Color.fromRGBO(139, 144, 160, 1),
                // onSearchButtonPressed: doSomething(),
                backgroundColor: blueGreyColor,
                borderColor: blueGreyColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //Teams Decorated bar
          Center(
            child: Container(
              // padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
              padding: EdgeInsets.all(14),
              height: 50,
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromARGB(255, 239, 242, 250),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Teams',
                    style: TextStyle(
                        color: const Color.fromRGBO(0, 198, 157, 1),
                        fontFamily: 'Roboto',
                        fontSize: 14.5,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    CupertinoIcons.chevron_right,
                    size: 17,
                    color: const Color.fromRGBO(139, 144, 160, 1),
                  )
                ],
              ),
            ),
          ),
          //-------------------------------------

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: teamNameAndLogoList.length,
              itemBuilder: (BuildContext context, index) {
                return TeamDataWidget(
                  teamName: teamNameAndLogoList[index].teamNameText,
                  teamLogo: teamNameAndLogoList[index].teamLogoText,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
