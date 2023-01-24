import 'package:flutter/material.dart';

class ShowTimes extends StatelessWidget{
  const ShowTimes({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                width: 200,
                child: const Text(
                  'Check Movie Showtimes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, top: 30),
                child: const Text(
                  'See More',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      decoration: TextDecoration.underline),
                )),
          ]),
      Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 200, top: 50),
              width: 100,
              child: const Icon(
                Icons.location_on,
                color: Colors.white,
                size: 50,
              ))
        ],
      )
    ],
  );

}