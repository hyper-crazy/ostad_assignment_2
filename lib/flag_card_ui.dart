import 'package:flutter/material.dart';
import 'data/card_data.dart';

class FlagCardUI extends StatefulWidget {
  const FlagCardUI({super.key});

  @override
  State<FlagCardUI> createState() => _FlagCardUIState();
}

class _FlagCardUIState extends State<FlagCardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flag Cards'),
        backgroundColor: const Color(0xFFEAECF0),
        elevation: 3,
        shadowColor: Colors.black,
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          // const Color customColor = Color(0xFFD2D4D8);
          // final flagCardList = [
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'বাংলাদেশ',
          //     population: '১৬৪',
          //     headline: 'Bangladesh: The Land of Rivers',
          //     flagImage: 'assets/flags/Flag_of_Bangladesh.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'ফিলিস্তিন',
          //     population: '৪',
          //     headline: 'Free Palestine form genocide',
          //     flagImage: 'assets/flags/Flag_of_Palestine.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'তুরস্ক',
          //     population: '৮৪',
          //     headline: 'Turkey: Where East Meets West',
          //     flagImage: 'assets/flags/Flag_of_Turkey.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'স্পেন',
          //     population: '৪৭',
          //     headline: 'Spain: A Country of Culture and Color',
          //     flagImage: 'assets/flags/Flag_of_Spain.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'জার্মানি',
          //     population: '৮৩',
          //     headline: 'Germany: The Engine of Europe',
          //     flagImage: 'assets/flags/Flag_of_Germany.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'জাপান',
          //     population: '১২৫',
          //     headline: 'Japan: Land of the Rising Sun',
          //     flagImage: 'assets/flags/Flag_of_Japan.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'মিশর',
          //     population: '১০৬',
          //     headline: 'Egypt: Gift of the Nile',
          //     flagImage: 'assets/flags/Flag_of_Egypt.svg.png',
          //   ),
          //   FlagCard(
          //     customColor: customColor,
          //     country: 'কানাডা',
          //     population: '৩৮',
          //     headline: 'Canada: The Great White North',
          //     flagImage: 'assets/flags/Flag_of_Canada.svg.png',
          //   ),
          // ];

          // Calculate card width based on screen size
          double cardWidth = screenWidth < 768
              ? (screenWidth / 2) - 15
              : screenWidth < 1024
              ? (screenWidth / 3) - 15
              : (screenWidth / 4) - 15;


          return Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: flagCardList.map((card) {
                  return SizedBox(
                    width: cardWidth,
                    child: card,
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
