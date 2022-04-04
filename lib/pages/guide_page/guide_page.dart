import 'package:flutter/material.dart';
import 'package:travel_plus/models/shedule_model.dart';
import 'package:travel_plus/styles/styles.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    SheduleModel sheduleModel = SheduleModel();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
                  Expanded(child: Container()),
                  Text(
                    'Travel Overview',
                    style: paragraphStyle,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                          shadowColor: Colors.redAccent,
                        ),
                        onPressed: () {},
                        child: const Text('Island', style: buttonTextStyle)),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                          shadowColor: Colors.redAccent,
                        ),
                        onPressed: () {},
                        child: const Text('Beach', style: buttonTextStyle)),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                          shadowColor: Colors.redAccent,
                        ),
                        onPressed: () {},
                        child: const Text('Resort', style: buttonTextStyle)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Day 1', style: listTitleTextStyle),
                        Text('May 18', style: listSubtitleTextStyle),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Text('Day 2', style: listTitleTextStyle),
                        Text('May 19', style: listSubtitleTextStyle),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Text('Day 3', style: listTitleTextStyle),
                        Text('May 20', style: listSubtitleTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)))),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: sheduleModel.islandShedule.length,
                    itemBuilder: (context, index) {
                      return sheduleModel.islandDates(context, index)!;
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 50,
                child: Opacity(
                  opacity: 0.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 205, 210),
                        onPrimary: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Confirm Route',
                        style: buttonTextStyle,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
