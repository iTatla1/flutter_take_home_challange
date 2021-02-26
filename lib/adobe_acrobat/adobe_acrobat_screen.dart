import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge/adobe_acrobat/model/acrobat_item.dart';
import 'package:take_home_challenge/adobe_acrobat/widgets/adobe_acrobat_row.dart';
import 'package:take_home_challenge/adobe_acrobat/widgets/adobe_menu_header.dart';
import 'package:take_home_challenge/adobe_acrobat/widgets/circular_bordered_icon_button.dart';

class AdobeAcrobatScreen extends StatefulWidget {
  static const String routeName = 'adobe_acrobat_screen';

  @override
  _AdobeAcrobatScreenState createState() => _AdobeAcrobatScreenState();
}

class _AdobeAcrobatScreenState extends State<AdobeAcrobatScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAdobeAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          bottom: 8,
          left: 18,
          right: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, Usman',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  fontSize: 26),
            ),
            SizedBox(
              height: 24,
            ),
            AdobeMenuHeader(),
            Expanded(
              child: ListView.separated(
                itemBuilder: (ctx, index) =>
                    AdobeAcrobatRowItem(item: AcrobatItem.items[index]),
                itemCount: AcrobatItem.items.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff135ae2),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _bottomNavBarTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff135ae2),
      unselectedItemColor: Color(0xff595959),
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_sharp),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_copy_sharp),
          label: 'Files',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_sharp),
          label: 'Shared',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp),
          label: 'Search',
        ),
      ],
    );
  }

  void _bottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  AppBar _buildAdobeAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(
        FontAwesomeIcons.earlybirds,
        color: Color(0xfff40f02),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Color(0xff5b5b5b),
          ),
        ),
        CircularBorderedIconButton(),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
