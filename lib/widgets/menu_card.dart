import 'package:flutter/material.dart';
import 'package:foodsapp/models/menu.dart';
import 'package:foodsapp/screens/detail_screen.dart';
import 'package:foodsapp/theme.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;
  const MenuCard(this.menu, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(menu.id, menu.image, menu.name, menu.note)));
      },
      child: Row(
        children: [
          Image.network(
            menu.image,
            width: 130,
            height: 110,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                menu.name,
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const SizedBox(width: 4),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Indonesian Food',
                style: poppinsTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: greyColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
