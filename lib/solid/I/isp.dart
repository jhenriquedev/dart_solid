
//Principio da segregação de interface => ISP

/*
MODO ERRADO

abstract class Conta {
  void depositar(int valor);
  void transferir(int valor);
  void realizarEmprestimo();
}

class ContaCorrente implements Conta {
  @override
  void depositar(int valor) => print('Depositando...');

  @override
  void transferir(int valor) => print('Transferindo...');

  @override
  void realizarEmprestimo() => print('Realizando emprestimo...');
}



class ContaPoupanca implements Conta {
  @override
  void depositar(int valor) => print('Depositando...');

  @override
  void transferir(int valor) =>
      throw Exception('Conta poupança não faz transferencia.');

  @override
  void realizarEmprestimo() =>
      throw Exception('Conta poupança não realiza emprestimo.');
}

*/

//FORMA CORRETA 

abstract class Conta {
  void depositar(int valor);
}

abstract class CestaDeServicos{
  void transferir(int valor);
  void realizarEmprestimo();
}

class ContaCorrente extends Conta implements CestaDeServicos{
  @override
  void depositar(int valor) => print('Depositando...');

  @override
  void transferir(int valor) => print('Transferindo...');

  @override
  void realizarEmprestimo() => print('Realizando emprestimo...');
}

class ContaPoupanca extends Conta {
  @override
  void depositar(int valor) => print('Depositando...');
}