import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meals_app/models/meal.dart';


class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: Stack(
          children: [
            FadeInImage(placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 44, vertical: 6),
                color: Colors.black54,
                child: Column(
                  children: [
                    Text(meal.title, maxLines: 2, textAlign: TextAlign.center, ),
                  ],
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
