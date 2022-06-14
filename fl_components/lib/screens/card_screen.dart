import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2018-07-11-at-5-10-02-pm-1531412351.png',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl:
                'https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=0%2C62%2C3200%2C1552&q=45&auto=format&w=1356&h=668&fit=crop',
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
