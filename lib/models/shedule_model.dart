import 'package:flutter/material.dart';
import 'package:travel_plus/styles/styles.dart';

class SheduleModel {
  List<Shedule> _shedule = [
    Shedule(
      '10:30',
      'lib/assets/images/location.jpg',
      'Stari Grad',
      'Discover Beach & castle',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
    Shedule(
      '12:45',
      'lib/assets/images/location.jpg',
      'Ivan Dolac',
      'Beach & wine',
      AssetImage(
        'lib/assets/images/Group_98.jpg',
      ),
    ),
    Shedule(
      '14:30',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
    Shedule(
      '16:30',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
    Shedule(
      '18:00',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
  ];
  List<Shedule> get shedules => _shedule;

  List<Shedule> _islandShedule = [
    Shedule(
      '10:30',
      'lib/assets/images/location.jpg',
      'Stari Grad',
      'Discover Beach & castle',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
    Shedule(
      '12:45',
      'lib/assets/images/location.jpg',
      'Ivan Dolac',
      'Beach & wine',
      AssetImage(
        'lib/assets/images/Group_98.jpg',
      ),
    ),
    Shedule(
      '14:30',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
    Shedule(
      '16:30',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage(
        'lib/assets/images/Group_99.jpg',
      ),
    ),
  ];
  List<Shedule> get islandShedule => _islandShedule;

  /// returns container without red grey line under location icon for last element from list.
  /// other objects will be whown with grey lines
  Widget? returnShedules(context, inx) {
    var result;

    for (int i = 0; i < shedules.length; i++) {
      if (i == shedules.lastIndexOf(shedules[inx], shedules.length))
        // result without grey linde
        result = Container(
          child: Stack(
            children: [
              Row(
                children: [
                  Text(shedules[inx].time, style: listTitleTextStyle),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(shedules[inx].locationPath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shedules[inx].title, style: listTitleTextStyle),
                      Text(shedules[inx].subtitle,
                          style: listSubtitleTextStyle),
                    ],
                  ),
                  Expanded(child: Container()),
                  Image(
                    image: shedules[inx].icon,
                  ),
                ],
              ),
            ],
          ),
        );
      else {
        // result with grey linde
        result = Container(
          child: Stack(
            children: [
              Row(
                children: [
                  Text(shedules[inx].time, style: listTitleTextStyle),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(shedules[inx].locationPath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shedules[inx].title, style: listTitleTextStyle),
                      Text(shedules[inx].subtitle,
                          style: listSubtitleTextStyle),
                    ],
                  ),
                  Expanded(child: Container()),
                  Image(
                    image: shedules[inx].icon,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74, top: 33),
                child: Container(width: 2, height: 41, color: Colors.grey),
              ),
            ],
          ),
        );
      }
    }
    return result;
  }


  /// the same functionality as [returnShedules] but for [islandShedule], list of dates for Island 
  Widget? islandDates(context, inx) {
    var result;

    for (int i = 0; i < islandShedule.length; i++) {
      if (i ==
          islandShedule.lastIndexOf(islandShedule[inx], islandShedule.length))
        // result without grey linde
        result = Container(
          child: Stack(
            children: [
              Row(
                children: [
                  Text(islandShedule[inx].time, style: listTitleTextStyle),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(islandShedule[inx].locationPath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(islandShedule[inx].title, style: listTitleTextStyle),
                      Text(islandShedule[inx].subtitle,
                          style: listSubtitleTextStyle),
                    ],
                  ),
                  Expanded(child: Container()),
                  Image(
                    image: islandShedule[inx].icon,
                  ),
                ],
              ),
            ],
          ),
        );
      else {
        // result with grey linde
        result = Container(
          child: Stack(
            children: [
              Row(
                children: [
                  Text(islandShedule[inx].time, style: listTitleTextStyle),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(islandShedule[inx].locationPath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(islandShedule[inx].title, style: listTitleTextStyle),
                      Text(islandShedule[inx].subtitle,
                          style: listSubtitleTextStyle),
                    ],
                  ),
                  Expanded(child: Container()),
                  Image(
                    image: islandShedule[inx].icon,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74, top: 33),
                child: Container(width: 2, height: 41, color: Colors.grey),
              ),
            ],
          ),
        );
      }
    }
    return result;
  }
}

class Shedule {
  String time;
  String locationPath;
  String title;
  String subtitle;
  AssetImage icon;

  Shedule(this.time, this.locationPath, this.title, this.subtitle, this.icon);
}
