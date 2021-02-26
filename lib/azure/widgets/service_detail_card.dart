import 'package:flutter/material.dart';
import 'package:take_home_challenge/azure/models/icon_service.dart';
import 'package:take_home_challenge/azure/widgets/VerticalServiceStack.dart';

class ServiceDetailCard extends StatelessWidget {
  final String title;
  final List<IconService> services;

  const ServiceDetailCard({Key key, this.title, this.services})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VerticalServiceStack(
                    service: services[0],
                  ),
                  VerticalServiceStack(
                    service: services[1],
                  ),
                  VerticalServiceStack(
                    service: services[2],
                  ),
                  VerticalServiceStack(
                    service: services[3],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
