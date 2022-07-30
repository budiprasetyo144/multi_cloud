import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}
List<Widget> views = [

];



int selectedIndex = 0;

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
              image: CircleAvatar(
                child: Icon(
                  Icons.person_pin,
                  size: 20,
                ),
                radius: 20,
              ),
              title: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Fahrur Huzain',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),),
              subtitle: Container(),
              // subtitle: Text(
              //   'Admin Eksad',
              //   style: TextStyle(color: Colors.white),
              // ),
            ),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.home,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
              SideNavigationBarItem(
                icon: Icons.insert_page_break,
                label: 'Pages',
              ),
              SideNavigationBarItem(
                icon: Icons.post_add,
                label: 'News',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            // Change the background color and disabled header/footer dividers
            // Make use of standard() constructor for other themes
            theme: SideNavigationBarTheme(
              backgroundColor:
              //Color.fromARGB(200, 9, 47, 171),
              Color.fromARGB(255, 18, 108, 178),
              togglerTheme: SideNavigationBarTogglerTheme(
                  shrinkIconColor: Colors.white,
                  expandIconColor: Colors.white),
              itemTheme:
              SideNavigationBarItemTheme(selectedItemColor: Colors.white,unselectedItemColor: Colors.white60),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
