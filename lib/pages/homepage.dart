import 'package:carousel_indicator/carousel_indicator.dart';

import 'package:coffeaapp_clone/pages/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final _selectedcofeeindex;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    int selectindex = 0;
    void indexchange(int index) {
      setState(
        () {
          selectindex = index;
        },
      );
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 51, 43),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            Text(
              'Find the best coffee near you',
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your favorite cofee',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 221, 148, 53),
                  Color.fromARGB(255, 196, 199, 50)
                ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Text(
                      'Coffe',
                      style: myTextStyle.customstyle1,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Latte',
                      style: myTextStyle.customstyle1,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Tea',
                      style: myTextStyle.customstyle1,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Dark',
                      style: myTextStyle.customstyle1,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Color.fromARGB(255, 54, 42, 38),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/flat-white-3402c4f.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Caramel Flavoured \nCappucino Coffee',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.gabriela(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Color.fromARGB(255, 54, 42, 38),
                        ],
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cafecube.net/wp-content/uploads/2021/12/latte-small.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Latte Coffe with \nCustom print',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.gabriela(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Color.fromARGB(255, 54, 42, 38),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.lifestyleasia.com/wp-content/uploads/sites/7/2022/07/22204522/indian-tea-brands.jpeg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Chai \nStraight from High ranges',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.gabriela(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Color.fromARGB(255, 54, 42, 38),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.comunicaffe.com/wp-content/uploads/2019/12/close-up-of-a-cup-of-tea.jpg',
                                    scale: 0.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tea \nAuthentic Indian Style',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.gabriela(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                  height: 220, viewportFraction: 0.5, enlargeCenterPage: true),
            ),

            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.cookie), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
