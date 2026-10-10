import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //3 segundos 
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black, // Fondo oscuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Logo
          children: [
            Image.asset(
              Icon(Icon.album, size:100, color: Colors.redAccent)
            ),
            SizedBox(height: 20), // Espacio entre el logo y el texto
            Text(
              'Universo Stray Kids',
              style: TextStyle(
                color: Colors.white, // Color del texto
                fontSize: 24, // Tamaño del texto
                fontWeight: FontWeight.bold, // Negrita
              ),
              SizedBox(height: 30),
              //Animación
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}