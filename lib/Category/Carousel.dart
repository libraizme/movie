import 'package:flutter/material.dart';
import '../Const/image.dart';

class Carousel extends StatelessWidget{
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) => PageView.builder(
      itemCount: movieURL.length,
      pageSnapping: true,
      itemBuilder: (context, pagePosition) {
        return SizedBox(
            child: Image.network(
              movieURL[pagePosition],
              fit: BoxFit.fill,
            ));
      });

}