import 'package:flutter/material.dart';
import 'package:take_home_challenge/azure/models/icon_service.dart';

class VerticalServiceStack extends StatelessWidget {
  final IconService service;

  const VerticalServiceStack({Key key, this.service}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        children: [
          Icon(service.icon),
          SizedBox(
            height: 4,
          ),
          Text(
            service.title,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
