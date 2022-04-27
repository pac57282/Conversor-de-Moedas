import 'package:flutter/material.dart';
import 'package:conversor_de_moeda/Controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de Moedas - ADS Senac Palhoça"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        centerTitle: true,
        shadowColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Image.asset(
                "imagens/real.png",
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.realController,
                onChanged: controller.realChanged,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Conversão em reais",
                  helperText: "REAL",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.dolarController,
                onChanged: controller.dolarChanged,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Conversão em dólar",
                  helperText: "Dólar",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.euroController,
                onChanged: controller.euroChanged,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Conversão em euro",
                  helperText: "EURO",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.bitcoinController,
                onChanged: controller.bitcoinChanged,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Conversão em bitcoin",
                  helperText: "BITCOIN",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
