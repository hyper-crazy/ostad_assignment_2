import 'package:flutter/material.dart';

class FlagCard extends StatelessWidget {
  final Color customColor;
  final String country, population, headline, flagImage;

  const FlagCard({
    super.key,
    required this.customColor,
    required this.country,
    required this.population,
    required this.headline,
    required this.flagImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min, // let card height grow with content
        children: [
          // Flag Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              flagImage,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Country & Population Row
          Container(
            color: customColor,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.flag, size: 14),
                    const SizedBox(width: 4),
                    Text(country, style: const TextStyle(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.people, size: 14),
                    const SizedBox(width: 4),
                    Text('$population M', style: const TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),

          // Headline Text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              headline,
              style: const TextStyle(fontSize: 13),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Button aligned to bottom
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( //button
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                backgroundColor: customColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Row( //button text
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    'বিস্তারিত দেখি',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_forward, size: 14, color: Colors.grey), //button icon
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
