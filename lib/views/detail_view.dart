import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:fic_furniture_shop/views/index_view.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  final String? title;
  final String? price;
  final String? image;

  const DetailView({
    super.key,
    this.title,
    this.price,
    this.image,
  });

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  bool show = true;
  int count = 0;
  int selected = 1;
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () async {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const IndexView()),
                    (route) => false);
              },
              child: Icon(
                Icons.arrow_back,
                color: darkGrey,
              ),
            ),
            centerTitle: true,
            title: Text(
              'Detail',
              style: TextStyle(color: darkGrey),
            ),
            actions: [
              Container(
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: greyLight),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      like = !like;
                    });
                  },
                  child: !like
                      ? Image.asset('assets/images/favorite_icon.png')
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.share_outlined,
                color: darkGrey,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/chair5.png',
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: show
                      ? MediaQuery.of(context).size.height / 2.4
                      : MediaQuery.of(context).size.height / 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: white),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: greyTwo),
                        ),
                      ),
                      show
                          ? const SizedBox(
                              height: 20,
                            )
                          : const SizedBox(),
                      show
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('${widget.title}'),
                                    Text(
                                      '${widget.price}',
                                      style: TextStyle(
                                          color: greyTwo, fontSize: 26),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/solidstar_icon.png'),
                                    const SizedBox(width: 8),
                                    Image.asset(
                                        'assets/images/solidstar_icon.png'),
                                    const SizedBox(width: 8),
                                    Image.asset(
                                        'assets/images/solidstar_icon.png'),
                                    const SizedBox(width: 8),
                                    Image.asset(
                                        'assets/images/solidstar_icon.png'),
                                    const SizedBox(width: 8),
                                    Image.asset(
                                        'assets/images/solidstar_off_icon.png')
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Choose a color :'),
                                    Row(children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 1;
                                          });
                                        },
                                        child: selected == 1
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      width: 3, color: greyTwo),
                                                ),
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: greyTwo,
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: greyTwo,
                                                ),
                                              ),
                                      ),
                                      const SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 2;
                                          });
                                        },
                                        child: selected == 2
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      width: 3, color: yellow),
                                                ),
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: yellow,
                                                  ),
                                                ))
                                            : Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: yellow,
                                                ),
                                              ),
                                      ),
                                      const SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 3;
                                          });
                                        },
                                        child: selected == 3
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      width: 3, color: grey),
                                                ),
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: grey,
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: grey,
                                                ),
                                              ),
                                      ),
                                      const SizedBox(width: 10),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 4;
                                          });
                                        },
                                        child: selected == 4
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      width: 3, color: brown),
                                                ),
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: brown,
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: brown,
                                                ),
                                              ),
                                      ),
                                    ]),
                                  ],
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Select Quality :'),
                                    Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: greyThree,
                                          border: Border.all(color: grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(18),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                18)),
                                                color: whiteTwo),
                                            child: InkWell(
                                                onTap: count != 0
                                                    ? () {
                                                        setState(() {
                                                          count--;
                                                        });
                                                      }
                                                    : null,
                                                child: Icon(
                                                  Icons.remove,
                                                  color: count == 0
                                                      ? greyLight
                                                      : greyTwo,
                                                )),
                                          ),
                                          Text(
                                            '$count',
                                            style: TextStyle(color: darkGrey),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(18),
                                                        bottomRight:
                                                            Radius.circular(
                                                                18)),
                                                color: whiteTwo),
                                            child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    count++;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: greyTwo,
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Curabitur commodo turpis id placerat mattis. Mauris\neuismod arcu id orci fringilla sodales. Proin congue\neleifend ipsum, eleifend porttitor mi ullamcorper.',
                                      style: TextStyle(
                                          fontSize: 12, color: greyFour),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                MaterialButton(
                                  color: greyTwo,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  onPressed: () {},
                                  child: Center(
                                      child: Text(
                                    'ADD TO CART',
                                    style: TextStyle(color: white),
                                  )),
                                )
                              ]),
                            )
                          : const SizedBox(),
                    ]),
                  )),
            ),
          ],
        ));
  }
}
