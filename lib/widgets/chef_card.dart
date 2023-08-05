import 'package:flutter/material.dart';

class ChefCard extends StatelessWidget {
  const ChefCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 4, // Shadow elevation of the card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
          height: 245,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://picsum.photos/200', // Replace with your image URL
                  width: double.infinity, // Image width takes full card width
                  height: 125, // Adjust the image height as needed
                  fit: BoxFit.cover, // Image fit style
                ),
              ),
              Positioned(
                top: 105,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/200'), // Replace with your image
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nisha Madhulika',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Gurgaon Sector 21',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '205 meals served',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xffF3EEE1),
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  'Punjabi',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              Container(
                                height: 35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xffF3EEE1),
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  '🏋️‍♀️ Gym Diet',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
