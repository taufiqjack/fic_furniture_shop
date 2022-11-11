import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:fic_furniture_shop/views/detail_view.dart';
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailView(
                                    title: 'Stylish Chair',
                                    price: '\$170',
                                  ))),
                      child: SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: Card(
                            margin: const EdgeInsets.only(right: 20, bottom: 0),
                            elevation: 0,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 120,
                                  width: double.infinity,
                                  child: Image.asset(
                                    'assets/images/chair1.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Column(
                                      children: [
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Stylish Chair'),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$170',
                                              style: TextStyle(color: grey),
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/solidstar_icon.png'),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  '4.8',
                                                  style: TextStyle(color: grey),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      width: double.infinity,
                      child: Card(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 0),
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 130,
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/chair2.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Modern Table'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$75',
                                            style: TextStyle(color: grey),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/solidstar_icon.png'),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '4.9',
                                                style: TextStyle(color: grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 200,
                      width: double.infinity,
                      child: Card(
                          margin: const EdgeInsets.only(
                              right: 20, top: 0, bottom: 0),
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 130,
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/chair3.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Wooden Console'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$240',
                                            style: TextStyle(color: grey),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/solidstar_icon.png'),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '4.7',
                                                style: TextStyle(color: grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 170,
                      width: double.infinity,
                      child: Card(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, bottom: 0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 130,
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/chair4.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Brown Armchair'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$210',
                                            style: TextStyle(color: grey),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/solidstar_icon.png'),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '4.9',
                                                style: TextStyle(color: grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                  ],
                )
              ],
            )));
  }
}
