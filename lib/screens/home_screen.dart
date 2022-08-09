import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodsapp/models/menu.dart';
import 'package:foodsapp/theme.dart';
import 'package:foodsapp/widgets/menu_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference products = firestore.collection('products');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: poppinsTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 22),
              Text(
                'Recomendasi Resep Makanan ',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 22),
              StreamBuilder<QuerySnapshot>(
                  stream: products.orderBy('id', descending: false).snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: (snapshot.data! as QuerySnapshot)
                            .docs
                            .map(
                              (e) => MenuCard(
                                Menu(
                                  id: e['id'],
                                  image: e['image'],
                                  name: e['name'],
                                  note: e['note'],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
