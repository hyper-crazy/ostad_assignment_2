import 'package:flutter/material.dart';

class FlagCard extends StatelessWidget {
  final String name, population, imagePath, headline;

  const FlagCard({
    super.key,
    required this.name,
    required this.population,
    required this.imagePath,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Total height of card
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 3,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final imageHeight = constraints.maxHeight * 0.45; // 40% of card
            final detailsHeight = constraints.maxHeight * 0.10; //10% of card
            final headlineHeight = constraints.maxHeight * 0.25; // 25% of card
            final buttonHeight = constraints.maxHeight * 0.15; // 15% of card

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //ClipRRect for the image
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                  // Container for the image
                  child: Container(
                    height: imageHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Container for the details
                Container(
                  height: detailsHeight,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      direction: Axis.horizontal,
                      children: [
                        // Row for the name and flagIcon
                        Row(
                          children: [
                            const Icon(Icons.flag, size: 20),
                            const SizedBox(width: 5),
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        //Row fot the population and peopleIcon
                        Row(
                          children: [
                            const Icon(Icons.people, size: 20),
                            const SizedBox(width: 5),
                            Text(
                              '$population million',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Text for the headline
                SizedBox(
                  height: headlineHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          headline,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Button for more details
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: buttonHeight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'বিস্তারিত দেখি',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
