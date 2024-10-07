import 'package:flutter/material.dart';
import 'payment.dart';

class CartPage extends StatelessWidget {
  final List<String> cart;
  final int total;

  CartPage({required this.cart, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cart[index]),
                );
              },
            ),
          ),
          Text('Total: \$${total.toString()}'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentPage(total: total),
                ),
              );
            },
            child: Text('Proceed to Payment'),
          ),
        ],
      ),
    );
  }
}
