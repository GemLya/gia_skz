class Member {
  final String nombre;
  final String nombreReal;
  final String rol;
  final String imagen;
  final String biografia;

  Member({
    required this.nombre,
    required this.nombreReal,
    required this.rol,
    required this.imagen,
    required this.biografia,
  });
}

// Lista de miembros (Mock Data)
List<Member> skzmembers = [
  Member(
    nombre: "Bang Chan",
    nombreReal: "Christopher Bang",
    rol: "Líder, Vocalista, Bailarín, Rapero",
    imagen: "assets/bangchan.jpg",
    biografia: """Bang Chan es el líder del grupo Stray Kids.
Nació el 3 de octubre de 1997 en Sydney, Australia. Es conocido por su talento en el canto, el baile y la composición de canciones.
Además, es uno de los principales productores del grupo.""",
  ),
  Member(
    nombre: "Lee Know",
    nombreReal: "Lee Min-ho",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/leeknow.jpg",
    biografia: """Lee Know es uno de los miembros principales del grupo Stray Kids.
Nació el 15 de junio de 1998 en Seúl, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "Changbin",
    nombreReal: "Seo Chang-bin",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/changbin.jpg",
    biografia: """Changbin es uno de los miembros principales del grupo Stray Kids.
Nació el 11 de agosto de 1999 en Yongin, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "Hyunjin",
    nombreReal: "Hwang Hyun-jin",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/hyunjin.jpg",
    biografia: """Hyunjin es uno de los miembros principales del grupo Stray Kids.
Nació el 20 de marzo de 2000 en Seúl, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "Han",
    nombreReal: "Han Ji-sung",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/han.jpg",
    biografia: """Han es uno de los miembros principales del grupo Stray Kids.
Nació el 14 de septiembre de 2000 en Incheon, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "Felix",
    nombreReal: "Felix Lee",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/felix.jpg",
    biografia: """Felix es uno de los miembros principales del grupo Stray Kids.
Nació el 15 de septiembre de 2000 en Sydney, Australia.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "Seungmin",
    nombreReal: "Kim Seung-min",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/seungmin.jpg",
    biografia: """Seungmin es uno de los miembros principales del grupo Stray Kids.
Nació el 22 de septiembre de 2000 en Seúl, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
  Member(
    nombre: "I.N",
    nombreReal: "Yang Jeong-in",
    rol: "Vocalista, Bailarín, Rapero",
    imagen: "assets/in.jpg",
    biografia: """I.N es uno de los miembros principales del grupo Stray Kids.
Nació el 8 de febrero de 2001 en Busan, Corea del Sur.
Es conocido por su talento en el canto, el baile y la composición de canciones.""",
  ),
];