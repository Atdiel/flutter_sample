import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}

Widget body() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://w.forfun.com/fetch/62/62e3ce60fc426fe6f475764cd99779b9.jpeg"),
          fit: BoxFit.cover),
    ),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        text_signin(),
        user_field(),
        user_password(),
        SizedBox(
          height: 15.0,
        ),
        signIn_button()
      ],
    )),
  );
}

Widget text_signin() {
  return Text(
    "Sign In",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget user_field() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Username",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget user_password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget signIn_button() {
  return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.tealAccent.shade400),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 8)),
      ),
      onPressed: () {},
      child: Text(
        "Enter",
        style: TextStyle(color: Colors.black87, fontSize: 16.0),
      ));
}

// class _InicioState extends State<Inicio> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Mi primera app Flutter"),
//         ),
//         body: Column(
//           children: [
//             Container(
//                 padding: EdgeInsets.all(20.0),
//                 child: Image.network(
//                     "https://gumlet.assettype.com/evoindia/2020-09/658ab34b-5f0d-4dff-b54b-c69dced4590a/SennaGTRLM825_6Harrods_3_.jpg?auto=format%2Ccompress")),
//             Container(
//                 padding: EdgeInsets.all(20.0),
//                 child: Image.network(
//                     "https://gumlet.assettype.com/evoindia/2020-09/658ab34b-5f0d-4dff-b54b-c69dced4590a/SennaGTRLM825_6Harrods_3_.jpg?auto=format%2Ccompress"))
//           ],
//         ));
//   }
// }
