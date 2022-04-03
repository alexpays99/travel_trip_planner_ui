import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SheduleModel {
  List<Shedule> _shedules = [
    Shedule(
      '10:30',
      'lib/assets/images/location.jpg',
      'Stari Grad',
      'Discover Beach & castle',
      AssetImage('lib/assets/images/Group_99.jpg',),
    ),
    Shedule(
      '12:45',
       'lib/assets/images/location.jpg',
      'Ivan Dolac',
      'Beach & wine',
      AssetImage('lib/assets/images/Group_98.jpg',),
    ),
    Shedule(
      '14:30',
      'lib/assets/images/location.jpg',
      'Sucuraj',
      'Lighthouse and beach',
      AssetImage('lib/assets/images/Group_99.jpg',),
    ),
  ];

  List<Shedule> get shedules => _shedules;
}

class Shedule {
  String time;
  String locationPath;
  String title;
  String subtitle;
  AssetImage icon;

  Shedule(this.time, this.locationPath, this.title, this.subtitle, this.icon);
}
