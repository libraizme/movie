import 'package:flutter/material.dart';
import 'easy_text_widget.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Stack(children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            EasyTextWidget(text: 'Original Title'),
            SizedBox(height: 10,),
            EasyTextWidget(text: 'Type'),
            SizedBox(height: 10,),
            EasyTextWidget(text: 'Production'),
            SizedBox(height: 10,),
            EasyTextWidget(text: 'Premiere'),
            SizedBox(height: 10,),
            EasyTextWidget(text: 'Description'),
            SizedBox(height: 10,),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Title of Movie', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10,),
              Text('Science , Adventuer , Action',
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 10,),
              Text('United State of America',
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 10,),
              Text('2021-11-15', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10,),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ]);
}
