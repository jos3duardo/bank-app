import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(title: Text('Transferências'),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      )
    )
  );
}

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencias(Transferencia(100.5, 10000)),
        ItemTransferencias(Transferencia(230.4, 20000)),
        ItemTransferencias(Transferencia(500.0, 50000)),
        ItemTransferencias(Transferencia(150.0, 13000)),
      ],
    );
  }
}

class ItemTransferencias extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencias(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numeroConta.toString()),
        )
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

}