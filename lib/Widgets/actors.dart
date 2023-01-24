import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import 'cache_network_image.dart';

class Actors extends StatelessWidget{
  const Actors({Key? key,required this.imageUrl,required this.title}) : super(key: key);
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) => SizedBox(
    child: Stack(
        children: [Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  height: 150,
                  child: CacheNetworkImageWidget(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              // const SizedBox(height: 3),
              SizedBox(
                  width: 100,
                  child: Text(title,style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: kFontSize14x, color: kWhiteColor),)),
              const SizedBox(height: 4),
            ]),
        ]),
  );

}