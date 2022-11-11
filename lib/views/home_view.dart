import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/menu_icon.png',
              height: 18,
            ),
          ),
          title: Text(
            'Home',
            style: TextStyle(color: darkGrey, fontFamily: 'SemiBold'),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              child: Image.asset('assets/images/search_icon.png'),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Discover the most\nmodern furniture',
                    style: TextStyle(
                        color: darkGrey, fontFamily: 'Medium', fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 33,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: grey),
                      child: Center(
                          child: Text(
                        'All',
                        style: TextStyle(color: white, fontSize: 12),
                      )),
                    ),
                    const Text(
                      'Living Room',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      'Bedroom',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      'Dining Room',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      'Kitchen',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recommended Furniture',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                          height: 700,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 20, bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/chair1.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 20, bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/chair2.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 20, bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/chair3.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 20, bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/chair4.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ])
              ],
            )));
  }
}
