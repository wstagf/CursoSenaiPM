import 'package:flutter/material.dart';

class CilcoDeVidaPage extends StatefulWidget {
  CilcoDeVidaPage({super.key}) {
    print('Constor do estado');
  }

  @override
  State<CilcoDeVidaPage> createState() => _CilcoDeVidaState();
}

class _CilcoDeVidaState extends State<CilcoDeVidaPage> {
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
  void didUpdateWidget(CilcoDeVidaPage oldWidget) {
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

    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
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
      ),
    );
  }
}
