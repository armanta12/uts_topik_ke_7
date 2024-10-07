import 'package:flutter/material.dart';
import 'cart.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> cart = [];
  int total = 0;

  // Fungsi untuk menambahkan ke keranjang
  void addItemToCart(String itemName, int price) {
    setState(() {
      cart.add('$itemName - \$$price');
      total += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: [
          // Menampilkan item dengan gambar
          menuItem(
            'Brownies Talas',
            '10',
            'assets/brownies_talas.jpeg', // Path gambar
          ),
          menuItem(
            'Kroket Talas',
            '5',
            'assets/kroket_talas.jpeg',
          ),
          menuItem(
            'Stick Talas',
            '8',
            'assets/stick_talas.jpeg',
          ),
          menuItem(
            'Keripik Talas',
            '7',
            'assets/keripik_talas.jpeg',
          ),
          menuItem(
            'Perkedel Talas',
            '6',
            'assets/perkedel_talas.jpeg',
          ),
          menuItem(
            'Puding Taro',
            '12',
            'assets/puding_taro.jpeg',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(cart: cart, total: total),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }

  // Widget untuk item menu dengan gambar
  Widget menuItem(String itemName, String price, String imagePath) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text('$itemName - \$$price'),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          addItemToCart(itemName, int.parse(price));
        },
      ),
    );
  }
}
