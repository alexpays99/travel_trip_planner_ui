import 'package:flutter/material.dart';
import 'package:travel_plus/models/slide_model.dart';
import '../../styles/styles.dart';

class SlideItems extends StatelessWidget {
  SlideItems({Key? key, required this.index}) : super(key: key);
  final int index;
  final slideModel = SlideModel();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width: 294,
            height: 308.63,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(slideModel.slideList[index].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(slideModel.slideList[index].title, style: titleStyle),
                Container(
                    child: const Icon(
                  Icons.add,
                  color: Colors.black,
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(slideModel.slideList[index].description, style: paragraphStyle),
        ],
      );
  }
}
