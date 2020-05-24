import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({
    @required this.id,
    @required this.title,
    this.color,
  });

  void selectCategory(BuildContext ctx) {
    Navigator.pushNamed(
      ctx,
      '/category-meals',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
