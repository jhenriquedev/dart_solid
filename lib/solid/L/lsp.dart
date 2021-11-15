// Principio da substituição de Liskov => lps

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


//Precisa ser corrigido no ISP,
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

