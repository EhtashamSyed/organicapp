import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String img;
  final String name;
  final String location;
  final String price;
  const FoodCard({
    Key? key,
    required this.img, required this.name, required this.location, required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 280,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 180,
                  width: 150,
                  child: Image.asset(
                    img,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: -2,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  location,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            price,
            style: const TextStyle(
                color: Color(0xFF356713),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}