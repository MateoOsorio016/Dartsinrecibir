import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_views/home_screen.dart';
import 'package:flutter_application_1/screen_views/card.dart';

class MyCatalogo extends StatefulWidget {
  const MyCatalogo({Key? key}) : super(key: key);

  @override
  State<MyCatalogo> createState() => _MyCatalogoState();
}

class _MyCatalogoState extends State<MyCatalogo> {
  List<Map<String, dynamic>> items = [
    {'name': 'Agua', 'image': 'images/descarga.jfif'},
    {'name': 'Aceite', 'image': 'images/aceite.png'},
    {'name': 'Sal', 'image': 'images/sal.png'},
    {'name': 'Azucar', 'image': 'images/azucar.png'},
  ];

  Future<void> refresh() async {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My list") , backgroundColor: const Color.fromARGB(255, 214, 159, 159),),
      body:
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/36a06510-8c7f-495a-8dba-74c44e78b5f1/ddx7unk-bf8aaf47-744a-4938-9bdd-bbb594f94319.png/v1/fill/w_1192,h_670,q_70,strp/noelle_mimosa___black_clover_by_keep_m_ddx7unk-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA4MCIsInBhdGgiOiJcL2ZcLzM2YTA2NTEwLThjN2YtNDk1YS04ZGJhLTc0YzQ0ZTc4YjVmMVwvZGR4N3Vuay1iZjhhYWY0Ny03NDRhLTQ5MzgtOWJkZC1iYmI1OTRmOTQzMTkucG5nIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.QuvSo39KMO_RvbUqfcNwVNO9ah7iowX31_4xyKyNHiQ'),
            fit: BoxFit.cover
          )
        ),
  
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
          final item = items[index];

            return ListTile(
              onTap: (){
                final route = MaterialPageRoute(
            builder: (context) => const CartScreen(),
          );
          Navigator.push(context, route);
              },
              title: Text(
                item['name'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              leading: CircleAvatar(backgroundImage: NetworkImage(item['image'])),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            );
          },
        ),
      )
      );
  }
}
