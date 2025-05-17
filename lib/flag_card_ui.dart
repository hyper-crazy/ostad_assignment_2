import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/widgets/flag_card.dart';

class FlagCardUI extends StatefulWidget {
  const FlagCardUI({super.key});

  @override
  State<FlagCardUI> createState() => _FlagCardUIState();
}

class _FlagCardUIState extends State<FlagCardUI> {

  @override
  Widget build(BuildContext context) {
    //Size screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Flag Cards'),
        centerTitle: true,
        shadowColor: Colors.grey,
        elevation: 2.5,
      ),

      body: LayoutBuilder(
          builder: (context, constraints)
          {
            double screenWidth = constraints.maxWidth;
            int cardCount;

            if (screenWidth < 768) {
              cardCount = 2;
            } else if (screenWidth < 1024) {
              cardCount = 3;
            } else {
              cardCount = 4;
            }

            const Color CustomColor = Color(0xFFEAECF0);
            final flagCardList = [
              FlagCard(customColor: CustomColor,
                country: 'বাংলাদেশ', population: '১৬৪',
                headline: 'Bangladesh: The Land of Rivers',
                flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png',),

              FlagCard(customColor: CustomColor,
                  country: 'ফিলিস্তিন', population: '৪',
                  headline: 'Free Palestine form genocide',
                  flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Palestine.svg/1200px-Flag_of_Palestine.svg.png'),

              FlagCard(customColor: CustomColor,
                country: 'তুরস্ক', population: '৮৪',
                headline: 'Turkey: Where East Meets West',
                flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/1200px-Flag_of_Turkey.svg.png',),

              FlagCard(customColor: CustomColor,
                country: 'স্পেন', population: '৪৭',
                headline: 'Spain: A Country of Culture and Color',
                flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/1200px-Flag_of_Spain.svg.png',),

              FlagCard(customColor: CustomColor,
                country: 'জার্মানি', population: '৮৩',
                headline: 'Germany: The Engine of Europe',
                flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/250px-Flag_of_Germany.svg.png',),

              FlagCard(customColor: CustomColor,
                country: 'জাপান', population: '১২৫',
                headline: 'Japan: Land of the Rising Sun',
                flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png', ),

              FlagCard(customColor: CustomColor,
                country: 'মিশর', population: '১০৬',
                headline: 'Egypt: Gift of the Nile',
                flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/800px-Flag_of_Egypt.svg.png', ),
              FlagCard(customColor: CustomColor,
                country: 'কানাডা', population: '৩৮',
                headline: 'Canada: The Great White North',
                flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/1200px-Flag_of_Canada_%28Pantone%29.svg.png', ),
            ];

            return GridView.count(
              crossAxisCount: cardCount,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.75,
              children: flagCardList,
            );

          }
      ),


    );
  }
}

