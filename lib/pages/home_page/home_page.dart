import 'package:flutter/material.dart';
import 'package:travel_plus/models/shedule_model.dart';
import 'package:travel_plus/styles/styles.dart';
import 'package:travel_plus/pages/home_page/bottom_navigation_bar.dart' as bottomNavigationBar;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SheduleModel shedule = SheduleModel();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Good Evening',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text('welcome, Alex', style: paragraphStyle),
                    ],
                  ),
                  Expanded(child: Container()),
                  const Image(
                    image: AssetImage(
                      'lib/assets/images/Ellipse_2.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('HVAR Island', style: paragraphStyle),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('lib/assets/images/image_12.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Row(
                      children: const [
                        Image(
                          image: AssetImage('lib/assets/images/location.jpg'),
                        ),
                        SizedBox(width: 10),
                        Text('Croatian, Adriatic Sea',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 210, top: 120),
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.redAccent,
                        ),
                        child: const Center(
                            child: Text('HVAR',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Schedule', style: paragraphStyle),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: shedule.shedules.length,
                  itemBuilder: (context, index) {
                    
                    return Container(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Row(
                        children: [
                          const Text('10:30', style: listTitleTextStyle),
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
                                image: AssetImage(shedule.shedules[index].locationPath),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(shedule.shedules[index].title, style: listTitleTextStyle),
                              Text(shedule.shedules[index].subtitle, style: listSubtitleTextStyle),
                            ],
                          ),
                          Expanded(child: Container()),
                          Image(
                            image: shedule.shedules[index].icon,
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: const bottomNavigationBar.BottomNavigationBar(),
    );
  }
}

