import 'package:flutter/material.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: FormularioTransferencia(),
        )
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferência'),),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 16.0
                ),
                decoration: InputDecoration(
                  labelText: 'Número da conta',
                  hintText: '000000'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                    fontSize: 16.0
                ),
                decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on_outlined),
                    labelText: 'Valor',
                    hintText: '0.00'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              child: Text('Salvar'),
            )
          ],
        ));
  }
}

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferências'),),
      body: Column(
        children: [
          ItemTransferencias(Transferencia(100.5, 10000)),
          ItemTransferencias(Transferencia(230.4, 20000)),
          ItemTransferencias(Transferencia(500.0, 50000)),
          ItemTransferencias(Transferencia(150.0, 13000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
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