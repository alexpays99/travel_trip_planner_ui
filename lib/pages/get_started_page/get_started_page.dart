import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_plus/models/slide_model.dart';
import 'package:travel_plus/pages/get_started_page/slide_dots.dart';
import 'package:travel_plus/pages/get_started_page/slide_item.dart';
import 'package:travel_plus/styles/styles.dart';

class GetStartedPage extends StatefulWidget {
  GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < SlideModel().slideList.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(microseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final slideModel = SlideModel();
    return GestureDetector(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                //const SizedBox(height: 90,),
                SizedBox(
                  height: 420,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      PageView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideModel.slideList.length,
                        itemBuilder: (context, int index) {
                          return SlideItems(index: index);
                        },
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              for (int i = 0;
                                  i < slideModel.slideList.length;
                                  i++)
                                if (i == _currentPage)
                                  SlideDots(isActive: true)
                                else
                                  SlideDots(isActive: false)
                            ]),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent,
                            onPrimary: Colors.white,
                            shadowColor: Colors.redAccent,
                            elevation: 9,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(100, 40),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: const Text('Get started',
                              style: buttonTextStyle)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )),
    );
  }
}

