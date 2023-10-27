import 'package:flutter/material.dart';

class CilcoDeVida extends StatefulWidget {
  CilcoDeVida({super.key}) {
    print('Constor do estado');
  }

  @override
  State<CilcoDeVida> createState() => _CilcoDeVidaState();
}

class _CilcoDeVidaState extends State<CilcoDeVida> {
  bool dadosCarregados = false;
  int numero = 0;

  _CilcoDeVidaState() {
    print('Constor da classe');
  }

  @override
  void initState() {
    print('Função init-state');
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        numero = 100;
        dadosCarregados = true;
      });
    });
  }

  @override
  void didUpdateWidget(CilcoDeVida oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('didUpdateWidget');
  }

  @override
  void dispose() {
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('Executou o Build');

    return InkWell(
      onTap: () {
        setState(() {
          numero++;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          dadosCarregados == false ? LinearProgressIndicator() : SizedBox(),
          Text(
            numero.toString(),
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          dadosCarregados == false ? CircularProgressIndicator() : SizedBox()
        ],
      ),
    );
  }
}
