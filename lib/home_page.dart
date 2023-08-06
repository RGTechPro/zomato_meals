import 'package:flutter/material.dart';
import 'package:zomato_meals/repository/chef_repository.dart';
import 'package:zomato_meals/widgets/chef_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChefRepository chefRepository = ChefRepository();
  @override
  void initState() {
    super.initState();
   chefRepository.fetchChefDataList();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 320,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 285,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Color(0xffFEE8C7),
                            ]),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.1),
                              offset: Offset(0, 0),
                              spreadRadius: .1,
                              blurRadius: 15),
                        ],
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset('assets/logo.png'),
                          const Text('Bilkul maa ke haath ka'),
                          const SizedBox(
                            height: 50,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.timer_outlined),
                                  Text(
                                    'Super fast\ndelivery',
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.currency_rupee_outlined),
                                  Text(
                                    'Pocket\nfriendly',
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.stars_outlined),
                                  Text(
                                    'Freshly\nPrepared',
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 272,
                  child: Container(
                    width: 200,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFCF7),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xffF3EEE1),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Dinner Slot 7.00-7.30 pm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Divider(
                color: Colors.grey.shade300,
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: 150,
                  child: Text(
                    'MEET YOUR CHEFS',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 35,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffF3EEE1),
                    width: 2,
                  ),
                ),
                child: Text(
                  '🥗 Pure Veg',
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Container(
                height: 35,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffF3EEE1),
                    width: 2,
                  ),
                ),
                child: Text(
                  '🏋️‍♀️ Gym Diet',
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Container(
                height: 35,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffF3EEE1),
                    width: 2,
                  ),
                ),
                child: Text(
                  '🥩 Non-Veg',
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            children: [ChefCard()],
          ))
        ],
      ),
    ));
  }
}
