import 'package:flutter/material.dart';
import 'package:simple_bubble_tea_app/models/drink.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final void Function()? onTap;
  final Widget trailing;

  const DrinkTile({
    Key? key,
    required this.drink,
    required this.onTap,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath),
          trailing: trailing,
        ),
      ),
    );
  }
}
