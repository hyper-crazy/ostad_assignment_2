import 'package:flutter/material.dart';

// =========================
// Full Feature Version (Commented Out)
// =========================

// class FlagCard extends StatelessWidget {
//   final Color myCustomColor;
//   final String countryName, population, flagImage, headTitle;
//
//   const FlagCard({
//     super.key,
//     required this.myCustomColor,
//     required this.countryName,
//     required this.population,
//     required this.headTitle,
//     required this.flagImage,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.only(bottom: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: const [
//           BoxShadow(color: Colors.grey, spreadRadius: 0.5, blurRadius: 5),
//         ],
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: myCustomColor,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                   ),
//                   child: Image.network(
//                     flagImage,
//                     width: double.infinity,
//                     height: 100,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 7),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Row(
//                           children: [
//                             const Icon(Icons.flag, size: 16),
//                             const SizedBox(width: 3),
//                             Flexible(
//                               child: Text(
//                                 countryName,
//                                 style: const TextStyle(fontSize: 14),
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Flexible(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             const Icon(Icons.people, size: 16),
//                             const SizedBox(width: 3),
//                             Flexible(
//                               child: Text(
//                                 '$population মিলিয়ন',
//                                 style: const TextStyle(fontSize: 14),
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Text(
//               headTitle,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 minimumSize: const Size(double.infinity, 45),
//                 backgroundColor: myCustomColor,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(5)),
//                 ),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const [
//                   Text(
//                     'বিস্তারিত দেখি',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(width: 12),
//                   Icon(Icons.arrow_forward, color: Colors.grey, size: 20),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// =========================
// Optimized Version (Fixed RenderFlex Overflow)
// =========================

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
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.45,
      height: screenSize.height * 0.27,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.grey, spreadRadius: 0.5, blurRadius: 3),
        ],
      ),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(bottom: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              flagImage,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: customColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Icons.flag, size: 16),
                        const SizedBox(width: 3),
                        Flexible(
                          child: Text(
                            country,
                            style: const TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.people, size: 16),
                        const SizedBox(width: 3),
                        Flexible(
                          child: Text(
                            '$population M',
                            style: const TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  headline,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: customColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text('বিস্তারিত দেখি',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.arrow_forward, color: Colors.grey, size: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
