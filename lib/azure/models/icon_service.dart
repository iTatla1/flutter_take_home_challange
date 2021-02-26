import 'package:flutter/material.dart';

class IconService {
  final IconData icon;
  final String title;

  IconService(this.icon, this.title);

  static List<IconService> azureServices = [
    IconService(
      Icons.computer,
      'Virtual machines',
    ),
    IconService(
      Icons.circle,
      'Web Apps',
    ),
    IconService(
      Icons.table_chart,
      'SQL Database',
    ),
    IconService(
      Icons.lightbulb,
      'Application Insight',
    ),
  ];

  static List<IconService> generalServices = [
    IconService(
      Icons.healing,
      'Service Health',
    ),
    IconService(
      Icons.group_sharp,
      'Resource groups',
    ),
  ];
}
