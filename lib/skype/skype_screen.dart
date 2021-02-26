import 'package:flutter/material.dart';
import 'package:take_home_challenge/skype/models/skype_model.dart';
import 'package:take_home_challenge/skype/widgets/skype_row.dart';

class SkypeScreen extends StatefulWidget {
  static const routeName = 'skype-screen';
  @override
  _SkypeScreenState createState() => _SkypeScreenState();
}

class _SkypeScreenState extends State<SkypeScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
        child: Column(
          children: [
            Text(
              'CHATS',
              style: TextStyle(
                color: Color(0xff75787e),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (ctx, index) => SkypeRow(
                model: SkypeModel.skypeModels[index],
              ),
              itemCount: SkypeModel.skypeModels.length,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff0c61cb),
        child: Icon(
          Icons.edit_outlined,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.notifications_none,
        color: Colors.black,
      ),
      actions: [
        Icon(
          Icons.video_call,
          color: Colors.black,
        ),
        SizedBox(
          width: 16,
        ),
        Icon(
          Icons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ],
      title: Row(
        children: [
          Spacer(),
          Stack(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/my_picture.jpg'),
                backgroundColor: Colors.grey,
              ),
              Positioned(
                child: StatusOnlineWidget(),
                bottom: 2,
                right: 0,
              )
            ],
          ),
          Spacer(),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _bottomNavBarTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff0c61cb),
      unselectedItemColor: Color(0xff434449),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Contacts',
        ),
      ],
    );
  }

  void _bottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class StatusOnlineWidget extends StatelessWidget {
  const StatusOnlineWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 6,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 4,
        backgroundColor: Colors.green,
      ),
    );
  }
}

class StatusOfflineWidget extends StatelessWidget {
  const StatusOfflineWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 6,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 4,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          radius: 2,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class StatusAwayWidget extends StatelessWidget {
  const StatusAwayWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 6,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 4,
        backgroundColor: Color(0xfffdad04),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 10,
        ),
      ),
    );
  }
}
