import 'package:flutter/material.dart';
import 'package:flutter_primera_app/pages/pagge3.dart';

class MainPage02 extends StatefulWidget {
  const MainPage02({super.key});
  @override
  Page02 createState() => Page02();
}

class Page02 extends State {
  Page02();
  bool _textDinamic = true;

  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 12000);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_facebook.nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _mostrarAlerta(context);
                },
                child: const Text("Mostrar Alerta")),
            const SizedBox(height: 20),
            Text(_textDinamic ? "Si" : "No"),
            const SizedBox(height: 45),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Page03())));
                },
                child: Text("Navegar a la sig."))
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Mensaje"),
            content: const Text("Contenido de popup alert dialog"),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _textDinamic = !_textDinamic;
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text("Salir")),
            ],
          );
        });
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;

  Empresa(this.nombre, this.propietario, this.ingresoAnual);
}
