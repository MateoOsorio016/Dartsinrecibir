import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
        ),
       body: ListView(
  padding: const EdgeInsets.all(5),
  children: [
    Card(
      child: Container(
        width: double.infinity, // Ancho de la tarjeta
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj5UmBTLx-mNSVcBKDit_4WQsCVPKSwFFaBs_pF-CawhxJltlbL_oCeulvnZqm488I4QE&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

      );
  }
}