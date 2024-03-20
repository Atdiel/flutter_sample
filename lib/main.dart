import 'package:flutter/material.dart';
import 'package:flutter_primera_app/pages/page2.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      body: body(context),
    );
  }
}

Widget body(context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://w.forfun.com/fetch/62/62e3ce60fc426fe6f475764cd99779b9.jpeg"),
          fit: BoxFit.cover),
    ),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textSignin(),
        usernameField(),
        userPasswordField(),
        const SizedBox(
          height: 15.0,
        ),
        signInButton(context)
      ],
    )),
  );
}

Widget textSignin() {
  return const Text(
    "Sign In",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget usernameField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Username",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget userPasswordField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget signInButton(context) {
  return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.tealAccent.shade400),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 25, vertical: 8)),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MainPage02()));
      },
      child: const Text(
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
