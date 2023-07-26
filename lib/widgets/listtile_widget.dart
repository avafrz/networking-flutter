import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  String title;
  String imageUrl;
  double price;
  String category;
  double rating;

  ListTileWidget(
    this.title,
    this.imageUrl,
    this.price,
    this.category,
    this.rating,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 224, 224, 224),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 100,
        child: Row(
          children: [
            Container(
              width: 140,
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 17,
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            softWrap: false,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '$price',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 75, 75, 75),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Text(
                          category,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 75, 75, 75),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          '$rating',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
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
