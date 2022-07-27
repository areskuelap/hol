import 'package:flutter/material.dart';
import 'dart:math';

class Hi extends StatefulWidget {
  @override
  _HiState createState() => _HiState();
}

class _HiState extends State<Hi> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  TextEditingController num4controller = new TextEditingController();
  TextEditingController num5controller = new TextEditingController();
  TextEditingController num6controller = new TextEditingController();
  TextEditingController num7controller = new TextEditingController();

  String uno = "0";
  String tres = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7C229),
        title: Text(
          'Estado de resultados',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: 50,
      ),
      backgroundColor: Color(0xFFF4F3E3),
      body: Builder(
        builder: (BuildContext context) => Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num1controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ventas netas',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num2controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Costo de ventas',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("Calcular"),
                    onPressed: () {
                      setState(() {
                        double one = double.parse(num1controller.text);
                        double two = double.parse(num2controller.text);

                        double ub = one - two;

                        uno = ub.toString();
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Utilidad bruta: $uno', style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num3controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gastos de Administración',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num4controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gastos de ventas',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num5controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gastos financieros',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num6controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Prestamos totáles',
                      hintText: 'Monto en soles',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: num7controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tása de interés de prestamos',
                      hintText: 'Ingresa solo números (%)',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      ElevatedButton(
                        child: Text("Calcular"),
                        onPressed: () {
                          setState(() {
                            double one = double.parse(num1controller.text);
                            double two = double.parse(num2controller.text);
                            double three = double.parse(num3controller.text);
                            double four = double.parse(num4controller.text);
                            double five = double.parse(num5controller.text);
                            double six = double.parse(num6controller.text);
                            double seven = double.parse(num7controller.text);

                            double ub = one - two;
                            double uai = ub - three - four - five;
                            double lf = seven / 100;
                            double re = six * lf;
                            double pf = six - re;
                            double hm = uai - pf;

                            tres = hm.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Resultado del ejercio: $tres', style: TextStyle(fontSize: 18)),
                ],
              ),
            )),
      ),
    );
  }
}
