import 'package:flutter/material.dart';
import '../models/member_model.dart';

class DetailScreen extends StatelessWidget {
  final Member member;

  DetailScreen({required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(member.nombre),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen con transición Hero
            Hero(
              tag: member.nombre,
              child: Image.asset(
                member.imagen,
                width: double.infinity,
                height: 320,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 320,
                    color: Colors.grey[300],
                    child: Icon(Icons.person, size: 100, color: Colors.grey[600]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    member.nombre,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Nombre real: ${member.nombreReal}",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700], fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.redAccent, size: 20),
                      SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          member.rol,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 30, thickness: 1),
                  Text(
                    "Biografía",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    member.biografia,
                    style: TextStyle(fontSize: 15, height: 1.4),
                  ),
                  SizedBox(height: 30),
                  // Botón de acción requerido
                  Center(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      icon: Icon(Icons.favorite, color: Colors.redAccent),
                      label: Text(
                        "Marcar como Favorito",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("¡${member.nombre} es tu bias! ❤️"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}