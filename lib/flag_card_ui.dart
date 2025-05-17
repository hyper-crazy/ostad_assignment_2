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
    const Color myCustomColor = Color(0xFFEAECF0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flag Cards'),
        centerTitle: true,
        shadowColor: Colors.grey,
        elevation: 2.5,
      ),

      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: const EdgeInsets.all(10),
      //   children: List.generate(15, (index){
      //     return Card(
      //       margin: EdgeInsets.all(7),
      //       elevation: 1.5,
      //       child: Center(
      //         child: Text('Card $index'),
      //
      //       ),
      //     );
      //   }),
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlagCard(myCustomColor: myCustomColor,
              countryName: 'বাংলাদেশ', population: '১৬৪',
              headTitle: 'Bangladesh: The Land of Rivers',
              flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png',),

            FlagCard(myCustomColor: myCustomColor,
                countryName: 'ফিলিস্তিন', population: '৪',
                headTitle: 'Free Palestine form genocide',
                flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Palestine.svg/1200px-Flag_of_Palestine.svg.png'),

            FlagCard(myCustomColor: myCustomColor,
              countryName: 'তুরস্ক', population: '৮৪',
              headTitle: 'Turkey: Where East Meets West',
              flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/1200px-Flag_of_Turkey.svg.png',),

            FlagCard(myCustomColor: myCustomColor,
              countryName: 'স্পেন', population: '৪৭',
              headTitle: 'Spain: A Country of Culture and Color',
              flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/1200px-Flag_of_Spain.svg.png',),

            FlagCard(myCustomColor: myCustomColor,
              countryName: 'জার্মানি', population: '৮৩',
              headTitle: 'Germany: The Engine of Europe',
              flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/250px-Flag_of_Germany.svg.png',),

            FlagCard(myCustomColor: myCustomColor,
              countryName: 'জাপান', population: '১২৫',
              headTitle: 'Japan: Land of the Rising Sun',
              flagImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png', ),

            FlagCard(myCustomColor: myCustomColor,
              countryName: 'মিশর', population: '১০৬',
              headTitle: 'Egypt: Gift of the Nile',
              flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/800px-Flag_of_Egypt.svg.png', ),
            FlagCard(myCustomColor: myCustomColor,
              countryName: 'কানাডা', population: '৩৮',
              headTitle: 'Canada: The Great White North',
              flagImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/1200px-Flag_of_Canada_%28Pantone%29.svg.png', ),
          ],
        ),
      ),
    );
  }
}
