import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_primera_app/models/gift.dart';
import 'package:http/http.dart' as http;

class Page03 extends StatefulWidget {
  const Page03({super.key});

  @override
  State<Page03> createState() => _Page03State();
}

class _Page03State extends State<Page03> {
  final List<Persona> _personas = [
    Persona("Lupe", "Poniente 2", "55-293-22"),
    Persona("Martin", "Calle kepler", "440-54-54"),
    Persona("Camila", "Av. Crisol", "123-0909-454")
  ];


  late Future<List<Gift>> _listadoGifts;
  var url = Uri.https("https://api.giphy.com", "v2/emoji?api_key=jrYQNJkbGk3uPDWJnh0Z65Nr22cZW1gN&limit=4&offset=0");

  Future<List<Gift>> _getGifts() async {
    final response = await http.get(url);

    List<Gift> gifts = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      final jsonBody = jsonDecode(body);

      for (var element in jsonBody["data"]) {
        gifts.add(
          Gift(element["title"], element["image"]["downsized"]["url"])
        );
      }

    } else {
      throw Exception("Error en la API");
    }

    return gifts;
  }

  @override
  void initState() {
    super.initState();
    _listadoGifts = _getGifts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                _borrarPersona(context, _personas[index]);
              },
              title: Text(_personas[index].nombre),
              subtitle: Text(
                  _personas[index].direccion + ' ' + _personas[index].telefono),
              leading: CircleAvatar(
                backgroundColor: Colors.yellow.shade400,
                foregroundColor: Colors.deepPurpleAccent,
                child: Text(_personas[index].nombre.substring(0, 1)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }

  _borrarPersona(context, Persona persona) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Eliminar Contacto"),
            content: Text("Confirmar eliminar " + persona.nombre),
            actions: [
              TextButton(
                  onPressed: () {
                    this.setState(() {
                      this._personas.remove(persona);
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Si",
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          );
        });
  }
}

class Persona {
  String nombre;
  String direccion;
  String telefono;

  Persona(this.nombre, this.direccion, this.telefono);
}
