import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final bool isChart;
  final String contentType;
  final IconData icon;
  final String message;

  const EmptyView(
      {Key key, this.isChart, this.contentType, this.icon, this.message})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    contentType,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'See all'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5e5f5e),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              if (isChart)
                SizedBox(
                  height: 8,
                ),
              if (isChart)
                Row(
                  children: [
                    Text(
                      'Chart view',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Switch(value: false, onChanged: (val) {})
                  ],
                ),
              SizedBox(
                height: 24,
              ),
              Icon(
                icon,
                color: Color(0xff818480),
                size: 48,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
