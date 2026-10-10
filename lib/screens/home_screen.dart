import 'package:flutter/material.dart';
import '../models/member_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Lista filtrada que se mostrará en pantalla
  List<Member> _filteredMembers = skzmembers;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Inicializamos con todos los miembros
    _filteredMembers = skzmembers;
  }

  // Método para filtrar la lista según lo que escriba el usuario
  void _filterMembers(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredMembers = skzmembers;
      } else {
        _filteredMembers = skzmembers.where((member) {
          final nameLower = member.nombre.toLowerCase();
          final realNameLower = member.nombreReal.toLowerCase();
          final searchLower = query.toLowerCase();
          
          return nameLower.contains(searchLower) || realNameLower.contains(searchLower);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stray Kids - Miembros"),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/logos/logo.jpg'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Barra de búsqueda funcional
            TextField(
              controller: _searchController,
              onChanged: _filterMembers,
              decoration: InputDecoration(
                hintText: "Buscar miembro...",
                prefixIcon: Icon(Icons.search, color: Colors.redAccent),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _filterMembers('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
              ),
            ),
            SizedBox(height: 15),
            // Cuadrícula dinámica de miembros filtrados
            Expanded(
              child: _filteredMembers.isEmpty
                  ? Center(
                      child: Text(
                        "No se encontró ningún miembro",
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: _filteredMembers.length,
                      itemBuilder: (context, index) {
                        final member = _filteredMembers[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(member: member),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15),
                                    ),
                                    child: Hero(
                                      tag: member.nombre,
                                      child: Image.asset(
                                        member.imagen,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[300],
                                            child: Icon(
                                              Icons.person,
                                              size: 50,
                                              color: Colors.grey[600],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        member.nombre,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        member.nombreReal,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}