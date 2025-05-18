import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/widgets/flag_card.dart';
import 'data/card_data.dart';


class FlagScreen extends StatefulWidget {
  const FlagScreen({super.key});

  @override
  State<FlagScreen> createState() => _FlagScreenState();
}

class _FlagScreenState extends State<FlagScreen> {
  int getCrossAxisCount(double width) {
    if (width <= 768) return 2;
    if (width <= 1024) return 3;
    return 4;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = getCrossAxisCount(screenWidth);

    return Scaffold(
      appBar: AppBar(title: const Text("Flags"), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: countryData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final country = countryData[index];
          return FlagCard(
            name: country['name']!,
            population: country['population']!,
            imagePath: country['image']!,
            headline: country['headline']!,
          );
        },
      ),
    );
  }
}
