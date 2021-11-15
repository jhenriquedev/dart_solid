// O => OCP => Principio do aberto/fechado
/*
class Pagamento{
  void pagarBoleto() => print('Pagando boleto');

  void pagarImposto() => print('Pagando imposto');
}
*/

//forma adequada

abstract class Pagamento {
  int valor = 20;
  void pagar();
}

class PagamentoBoleto extends Pagamento {
  @override
  void pagar() => print('Pagando boleto $valor');
}

class PagamentoImposto extends Pagamento {
  @override
  int valor = 10;

  @override
  void pagar() => print('Pagando imposto $valor');
}

class PagamentoCartao extends Pagamento {
  @override
  void pagar() => print('Pagando Cartão $valor');
}
