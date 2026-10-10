import 'package:flutter/material.dart';
import '../models/album_model.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discografía - Stray Kids"),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: skzAlbums.length,
        itemBuilder: (context, index) {
          final album = skzAlbums[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  album.imagen,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey[300],
                      child: Icon(Icons.album, color: Colors.grey[600]),
                    );
                  },
                ),
              ),
              title: Text(
                album.titulo,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Año: ${album.anio}"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Aquí puedes agregar la navegación al detalle del álbum si lo deseas
              },
            ),
          );
        },
      ),
    );
  }
}
