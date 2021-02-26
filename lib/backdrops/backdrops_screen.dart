import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge/backdrops/widgets/backdrop_body_widget.dart';

class BackdropsScreen extends StatefulWidget {
  static const routeName = 'back-drops';

  @override
  _BackdropsScreenState createState() => _BackdropsScreenState();
}

class _BackdropsScreenState extends State<BackdropsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.index = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.all(1.5),
        color: Colors.black,
        child: TabBarView(
          controller: _tabController,
          children: [
            BackDropBody(),
            BackDropBody(),
            BackDropBody(),
            BackDropBody(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff1a2225),
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      title: Row(
        children: [
          Spacer(),
          Text(
            'Explore'.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Spacer(),
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {})
      ],
      bottom: TabBar(
        controller: _tabController,
        tabs: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              FontAwesomeIcons.globe,
            ),
          ),
          Icon(
            FontAwesomeIcons.compass,
          ),
          Icon(Icons.network_locked_outlined),
          Icon(Icons.favorite_border),
        ],
        indicatorColor: Color(0xff20bfce),
        indicatorWeight: 4,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
