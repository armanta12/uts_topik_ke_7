import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final int total;

  PaymentPage({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Amount: \$${total.toString()}'),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Payment Successful!')),
                );
              },
              child: Text('Confirm Payment'),
            ),
          ],
        ),
      ),
    );
  }
}