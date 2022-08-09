import 'package:flutter/material.dart';
import 'package:foodsapp/models/size.dart';
import 'package:foodsapp/theme.dart';
import 'package:foodsapp/widgets/size_card.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  int id;
  String image;
  String name;
  String note;

  DetailScreen(this.id, this.image, this.name, this.note, {Key? key})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<DetailScreen> createState() => _DetailScreen(id, image, name, note);
}

class _DetailScreen extends State<DetailScreen> {
  int _id;
  String _image;
  String _name;
  String _note;

  _DetailScreen(
    this._id,
    this._image,
    this._name,
    this._note,
  );

  launchUrl(String url) async {
    launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              _image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/btn_back.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/btn_share.png', width: 40),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(height: 264),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/promo.png',
                              width: 60,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  _name,
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor,
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(width: 16),
                                const SizedBox(width: 16),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(),
                            const SizedBox(height: 18),

                            const SizedBox(height: 12),

                            const SizedBox(height: 18),
                            Text(
                              'Detail :',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                _note ,
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: greyColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),

                            const SizedBox(height: 12),
                            InkWell(
                              onTap: () {
                                launchUrl('https://g.page/Pasar-mayong?share');
                              },
                              child: Row(),
                            ),
                            const SizedBox(height: 40),
                            // ignore: sized_box_for_whitespace
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
