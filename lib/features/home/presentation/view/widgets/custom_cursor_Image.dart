import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store_app/features/home/domain/entity/product.dart';

class CustomCursorImage extends StatefulWidget {
  const CustomCursorImage({super.key, required this.images});
final List<ProductImageEntity>images;
  @override
  State<CustomCursorImage> createState() => _CustomCursorImageState();
}

class _CustomCursorImageState extends State<CustomCursorImage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items:
          widget.images.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.network(
                    url.src,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                );
              },
            );
          }).toList(),

        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          widget.images.asMap().entries.map((entry) {
            return Container(
              width: 10.0,
              height: 10.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                _currentIndex == entry.key
                    ? Colors.blue
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),

      ],
    );
  }
}
