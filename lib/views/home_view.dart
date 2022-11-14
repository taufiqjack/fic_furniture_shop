import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:fic_furniture_shop/views/detail_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool like = false;
  List<bool> isLike = List.generate(4, (_) => false);
  int selected = 1;
  PageController pageControler = PageController();
  var duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteTwo,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 4.5),
          child: Column(
            children: [
              AppBar(
                backgroundColor: whiteTwo,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Discover the most\nmodern furniture',
                    style: TextStyle(
                        color: darkGrey, fontFamily: 'Medium', fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 1;
                          pageControler.animateToPage(0,
                              curve: Curves.easeIn, duration: duration);
                        });
                      },
                      child: selected == 1
                          ? Container(
                              height: 33,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: grey),
                              child: Center(
                                  child: Text(
                                'All',
                                style: TextStyle(color: white, fontSize: 12),
                              )),
                            )
                          : Text(
                              'All',
                              style: TextStyle(color: darkGrey, fontSize: 12),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 2;
                          pageControler.animateToPage(1,
                              curve: Curves.easeIn, duration: duration);
                        });
                      },
                      child: selected == 2
                          ? Container(
                              height: 33,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: grey),
                              child: Center(
                                  child: Text(
                                'Living Room',
                                style: TextStyle(color: white, fontSize: 12),
                              )),
                            )
                          : const Text(
                              'Living Room',
                              style: TextStyle(fontSize: 12),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 3;
                          pageControler.animateToPage(2,
                              curve: Curves.easeIn, duration: duration);
                        });
                      },
                      child: selected == 3
                          ? Container(
                              height: 33,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: grey),
                              child: Center(
                                  child: Text(
                                'Bedroom',
                                style: TextStyle(color: white, fontSize: 12),
                              )),
                            )
                          : const Text(
                              'Bedroom',
                              style: TextStyle(fontSize: 12),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 4;
                          pageControler.animateToPage(3,
                              curve: Curves.easeIn, duration: duration);
                        });
                      },
                      child: selected == 4
                          ? Container(
                              height: 33,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: grey),
                              child: Center(
                                  child: Text(
                                'Dining Room',
                                style: TextStyle(color: white, fontSize: 12),
                              )),
                            )
                          : const Text(
                              'Dining Room',
                              style: TextStyle(fontSize: 12),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 5;
                          pageControler.animateToPage(4,
                              curve: Curves.easeIn, duration: duration);
                        });
                      },
                      child: selected == 5
                          ? Container(
                              height: 33,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: grey),
                              child: Center(
                                  child: Text(
                                'Kitchen',
                                style: TextStyle(color: white, fontSize: 12),
                              )),
                            )
                          : const Text(
                              'Kitchen',
                              style: TextStyle(fontSize: 12),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      body: PageView(
          controller: pageControler,
          onPageChanged: (value) {
            setState(() {
              selected = value + 1;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                children: [
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
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailView(
                                      title: 'Stylish Chair',
                                      price: '\$170',
                                      image: 'assets/images/chair1.png',
                                    ))),
                        child: SizedBox(
                          height: 170,
                          width: double.infinity,
                          child: Stack(children: [
                            Card(
                                margin:
                                    const EdgeInsets.only(right: 20, bottom: 0),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                      style: TextStyle(
                                                          color: grey),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isLike[0] = !isLike[0];
                                    });
                                  },
                                  child: !isLike[0]
                                      ? Image.asset(
                                          'assets/images/favorite_icon.png')
                                      : const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailView(
                                      title: 'Modern Table',
                                      price: '\$75',
                                      image: 'assets/images/chair2.png',
                                    ))),
                        child: SizedBox(
                          height: 170,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Card(
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '\$75',
                                                    style:
                                                        TextStyle(color: grey),
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
                                                        style: TextStyle(
                                                            color: grey),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          )),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: white),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isLike[1] = !isLike[1];
                                      });
                                    },
                                    child: !isLike[1]
                                        ? Image.asset(
                                            'assets/images/favorite_icon.png')
                                        : const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailView(
                                      title: 'Wooden Console',
                                      price: '\$240',
                                      image: 'assets/images/chair3.png',
                                    ))),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 200,
                          width: double.infinity,
                          child: Stack(children: [
                            Card(
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                      style: TextStyle(
                                                          color: grey),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isLike[2] = !isLike[2];
                                    });
                                  },
                                  child: !isLike[2]
                                      ? Image.asset(
                                          'assets/images/favorite_icon.png')
                                      : const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailView(
                                      title: 'Brown Armchair',
                                      price: '\$210',
                                      image: 'assets/images/chair4.png',
                                    ))),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 170,
                          width: double.infinity,
                          child: Stack(children: [
                            Card(
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                      style: TextStyle(
                                                          color: grey),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isLike[3] = !isLike[3];
                                    });
                                  },
                                  child: !isLike[3]
                                      ? Image.asset(
                                          'assets/images/favorite_icon.png')
                                      : const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text('Coming soon'),
            ),
            const Center(
              child: Text('Coming soon'),
            ),
            const Center(
              child: Text('Coming soon'),
            ),
            const Center(
              child: Text('Coming soon'),
            ),
          ]),
    );
  }
}
