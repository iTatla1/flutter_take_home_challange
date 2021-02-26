import 'package:flutter/material.dart';
import 'package:take_home_challenge/home/model/home_item.dart';
import 'package:take_home_challenge/home/widgets/flutter_karachi_title.dart';
import 'package:take_home_challenge/home/widgets/home_list_row.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildIntroAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterKarachiTitle(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, index) => HomeListRow(
                  item: HomeItem.items[index],
                ),
                itemCount: HomeItem.items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildIntroAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muhammad Usman',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'usm.gh36@gmail.com',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Spacer(),
          Image(
            image: AssetImage('assets/images/myDashtar.png'),
            width: 90,
            height: 90,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
