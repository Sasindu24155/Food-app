import 'package:flutter/material.dart';

class ProductOverview extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDescription;
  final String productPrice;

  const ProductOverview({
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.productPrice,
  });

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Overview'),
        backgroundColor: Colors.green.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                productImage,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 16),
            Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '' + productPrice,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 8),
            Divider(),
            Text(
              'Available Options',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: 0, // Implement state management for the groupValue
                  onChanged: (value) {
                    // Implement your functionality
                  },
                ),
                Text( ' Gram'),
                Spacer(),
                Text(
                  '' + productPrice,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('+ ADD'),
                  
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 16),
            Text(
              'About This Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              productDescription,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton.icon(
                  
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  label: Text('Add To Wishlist'),
                  
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Go To Cart'),
                  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}