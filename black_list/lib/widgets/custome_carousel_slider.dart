import 'package:black_list/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  final List<String> images;
  double? height;
  BoxFit? fit;
  CustomCarouselSlider({Key? key, required this.images, this.height, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: height != null ? height! + 20 : 250,
        autoPlay: false,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        viewportFraction: 1,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                children: [
                  Image.asset(
                    images[itemIndex],
                    width: MediaQuery.of(context).size.width,
                    height: height ?? 230,
                    fit: fit ?? BoxFit.contain,
                  ),
                  /* Positioned(
                      bottom: 5,
                      child: Container(
                        width: 50,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(0.6),
                        ),
                        child: Center(
                          child: Text(
                            '${itemIndex + 1}/${images.length}',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      left: MediaQuery.of(context).size.width / 2.5),*/
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: SizedBox(
                    height: 7,
                    width: 7,
                    child: CircleAvatar(
                      backgroundColor:
                          (itemIndex == index) ? color3 : secondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
