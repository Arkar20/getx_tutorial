import 'package:flutter/material.dart';
import 'package:getx_tutorial/utils/responsive.dart';

class ProductCard extends StatelessWidget {
  final String img;
  final String productName;
  final String price;

  const ProductCard({
    Key? key,
    required this.img,
    required this.productName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(img, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Column(
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[500],
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
