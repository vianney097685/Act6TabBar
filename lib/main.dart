import 'package:flutter/material.dart';

void main() => runApp(ArellanoApp());

class ArellanoApp extends StatefulWidget {
  @override
  _ArellanoAppState createState() => _ArellanoAppState();
} //Fin de la primera clase

class _ArellanoAppState extends State<ArellanoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  } //Fin de widget
} //Fin de la segunda clase

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //Fin de clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Fin iniciar estado con 5 tab icons

  Widget card(String text) {
    return Card(
      color: Colors.pink[100],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Fin de tab texto y icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars de Arellano"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("TARJETA NUMERO 1"),
          card("TARJETA NUMERO 2"),
          card("TARJETA NUMERO 3"),
          card("TARJETA NUMERO 4"),
          card("TARJETA NUMERO 5"),
        ],
      ), //Fin de TabBarView
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Usuario", Icon(Icons.account_circle)),
          tab("Camara", Icon(Icons.add_a_photo)),
          tab("Galeria", Icon(Icons.add_photo_alternate)),
          tab("Descargar", Icon(Icons.arrow_circle_down)),
          tab("Compartir", Icon(Icons.attach_file)),
        ],
      ),
    ); //Fin del Scaffold
  } //Fin de widget
} //Fin de clase_PrincipalState
