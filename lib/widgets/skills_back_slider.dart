import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/skills_model.dart';

class SkillsBackSlider extends StatelessWidget {
  const SkillsBackSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: skills_back.length,
        itemBuilder: (context, index, realIndex) => Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(skills_back[index].imageFileName,),
              ),
            ),
          ],
        ),
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          aspectRatio: 1.5,
          viewportFraction: 1,
          padEnds: true,
          initialPage: 0,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          disableCenter: true,
        ),
      ),
    );
  }
}
