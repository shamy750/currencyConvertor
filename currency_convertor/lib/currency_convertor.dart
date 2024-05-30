// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.white, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(20)));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Currency Convertor"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10),
              child: Text(
                'INR $result',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(Icons.monetization_on),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.green,
                    fixedSize: const Size(200, 50),
                  ),
                  child: const Text("click me")),
            ),
          ],
        ),
      ),
    );
  }
}
