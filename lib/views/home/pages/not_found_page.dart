import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(30),
                child: Image.asset(
                  "assets/not_found.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'ESTA SECCIÓN ESTÁ\n EN CONSTRUCCIÓN,\n¡ESPÉRALA PRONTO! 👌',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: .5,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
