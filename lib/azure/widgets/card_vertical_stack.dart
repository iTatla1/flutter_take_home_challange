import 'package:flutter/material.dart';
import 'package:take_home_challenge/azure/models/icon_service.dart';

class CardVerticalStack extends StatelessWidget {
  final IconService service;

  const CardVerticalStack({Key key, this.service}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Column(
            children: [
              Text(service.title),
              SizedBox(
                height: 48,
              ),
              Icon(
                service.icon,
                size: 48,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
