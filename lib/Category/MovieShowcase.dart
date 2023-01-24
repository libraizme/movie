import 'package:flutter/material.dart';
import '../Const/dimens.dart';
import '../Widgets/showcase.dart';

class MovieShowcase extends StatelessWidget{
  const MovieShowcase({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ShowCase(imageUrl:
        'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
          title: 'MovieTiele 2119',),
        SizedBox(
          width: kSP10x,
        ),
        ShowCase(
          imageUrl:
          'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
          title: 'MovieTiele 27809',
        ),
        SizedBox(
          width: kSP10x,
        ),
        ShowCase(
          imageUrl:
          'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
          title: 'MovieTiele 27535349',
        ),
        SizedBox(
          width: kSP10x,
        ),
      ],
    ),
  );

}