import 'package:flutter/material.dart';

class AdobeMenuHeader extends StatelessWidget {
  const AdobeMenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              width: 53,
              height: 2,
              color: Colors.black87,
            )
          ],
        ),
        SizedBox(
          width: 32,
        ),
        Text(
          'Starred',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff545454),
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_vert,
          color: Color(0xff585858),
        ),
      ],
    );
  }
}
