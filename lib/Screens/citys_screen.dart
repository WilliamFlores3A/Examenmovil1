import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:am2_practice_3/model/city.dart';

class CityScreen extends StatefulWidget {
  final City city;
  const CityScreen({Key? key, required this.city}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.city.name + ' - ' + widget.city.poblacion.toString()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              const Text(
                'ID: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.city.id.toString())
            ]),
            const SizedBox(height: 10.0),
            Row(children: [
              const Text(
                'Ciudad: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.city.name)
            ]),
            const SizedBox(height: 10.0),
            Row(children: [
              const Text(
                'poblacion: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(widget.city.poblacion.toString())
            ]),
            const SizedBox(height: 10.0),
            const Text(
              'Descripción:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(widget.city.description),
          ],
        ),
      ),
    );
  }
}
