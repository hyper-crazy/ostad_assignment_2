import 'package:flutter/material.dart';

class FlagCard extends StatelessWidget {
  final Color myCustomColor;
  final String countryName, population, flagImage, headTitle;

  const FlagCard({
    super.key,
    required this.myCustomColor,
    required this.countryName,
    required this.population,
    required this.headTitle,
    required this.flagImage,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 200,
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.only(bottom: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                blurRadius: 5,
              ), // changes position of shadow
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: 200,
                decoration: BoxDecoration(
                  color: myCustomColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.network(flagImage, width: double.infinity, height: 120,
                        fit: BoxFit.cover,
                        )
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 3),
                            child: Row(
                              children: [
                                Icon(Icons.flag), // Or any other Icon
                                SizedBox(width: 3), // Add some space between icon and text
                                Text(countryName, style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Row(
                              children: [
                                Icon(Icons.people),
                                SizedBox(width: 3),
                                Text('$population মিলিয়ন', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(headTitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              Spacer(),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: myCustomColor,
                  fixedSize: Size(180, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('বিস্তারিত দেখি',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(Icons.arrow_forward, color: Colors.grey, size: 20,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
