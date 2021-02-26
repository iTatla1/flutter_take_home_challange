import 'package:flutter/material.dart';
import 'package:take_home_challenge/azure/models/icon_service.dart';
import 'package:take_home_challenge/azure/widgets/card_vertical_stack.dart';
import 'package:take_home_challenge/azure/widgets/empty_view.dart';
import 'package:take_home_challenge/azure/widgets/service_detail_card.dart';

class AzureScreen extends StatefulWidget {
  static const String routeName = 'azure_screen';

  @override
  _AzureScreenState createState() => _AzureScreenState();
}

class _AzureScreenState extends State<AzureScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Color(
        0xffe0e7df,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ServiceDetailCard(
                title: 'Azure Services',
                services: IconService.azureServices,
              ),
              EmptyView(
                isChart: true,
                contentType: 'Latest alerts',
                icon: Icons.grain,
                message: 'Failed to load. Please pull down to refresh.',
              ),
              EmptyView(
                isChart: false,
                contentType: 'Recent resources',
                icon: Icons.square_foot,
                message:
                    'No recent resources to display. As you visit resource, they will be listed her for quick access.',
              ),
              Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CardVerticalStack(
                        service: IconService.generalServices[0],
                      ),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CardVerticalStack(
                        service: IconService.generalServices[1],
                      ),
                    ),
                  )
                ],
              ),
              EmptyView(
                isChart: false,
                contentType: 'Favourites',
                icon: Icons.star,
                message:
                    'You do not have any favourite resources yet. Try changing your filters.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _bottomNavBarTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff1d6abc),
      unselectedItemColor: Color(0xff414341),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_sharp),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Subscription',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.crop_square),
          label: 'Resources',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cancel_presentation),
          label: 'Code Shell',
        ),
      ],
    );
  }

  void _bottomNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        'Home',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Icon(
          Icons.edit,
          color: Colors.black,
        ),
        SizedBox(
          width: 16,
        ),
        Icon(
          Icons.filter_alt_outlined,
          color: Colors.black,
        ),
      ],
    );
  }
}
