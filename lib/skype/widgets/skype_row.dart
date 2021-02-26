import 'package:flutter/material.dart';
import 'package:take_home_challenge/skype/models/skype_model.dart';
import 'package:take_home_challenge/skype/skype_screen.dart';

class SkypeRow extends StatelessWidget {
  final SkypeModel model;

  const SkypeRow({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xffededf0),
                    backgroundImage: model.picture != null
                        ? AssetImage(model.picture)
                        : null,
                    child: model.picture != null
                        ? Container()
                        : Text(
                            model.titlePreview,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0c61cb),
                            ),
                          ),
                  ),
                  if (model.status == ContactStatus.online)
                    Positioned(
                      child: StatusOnlineWidget(),
                      bottom: 2,
                      right: 0,
                    ),
                  if (model.status == ContactStatus.offline)
                    Positioned(
                      child: StatusOfflineWidget(),
                      bottom: 2,
                      right: 0,
                    ),
                  if (model.status == ContactStatus.away)
                    Positioned(
                      child: StatusAwayWidget(),
                      bottom: 2,
                      right: 0,
                    ),
                ],
              ),
              SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      if (model.lastActionIcon != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            model.lastActionIcon,
                            size: 14,
                            color: Color(0xffa2a4a8),
                          ),
                        ),
                      FittedBox(child: Text(model.lastAction)),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Text(
                model.date,
                style: TextStyle(
                  color: Color(0xff787a7f),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64.0),
            child: Divider(
              color: Color(0xffe2e3e8),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
