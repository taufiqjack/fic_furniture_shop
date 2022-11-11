import 'package:fic_furniture_shop/customs/color_custom.dart';
import 'package:fic_furniture_shop/views/index_view.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  final String? title;
  final String? price;

  const DetailView({
    super.key,
    this.title,
    this.price,
  });

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
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
                child: Image.asset('assets/images/favorite_icon.png'),
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
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/chair5.png',
                ),
                fit: BoxFit.fill,
              )),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: show ? 250 : 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: white),
                  child: Column(children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: greyTwo),
                      ),
                    ),
                    show
                        ? SizedBox(
                            height: 20,
                          )
                        : SizedBox(),
                    show
                        ? Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${widget.title}'),
                                Text('${widget.price}'),
                              ],
                            ),
                          )
                        : SizedBox()
                  ]),
                )),
          ],
        ));
  }
}
