import 'package:flutter/material.dart';

import '../model/onboarding_slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 100.0, bottom: 100.0),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(slideList[index].imageDir), fit: BoxFit.fitHeight),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0))),
          ),
        ),
        Container(
          child: slideList[index].subImageDir == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(top: 100.0, bottom: 20.0),
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(slideList[index].subImageDir!),
                            fit: BoxFit.fitHeight),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0))),
                  ),
                ),
        )
      ],
    );
  }
}
