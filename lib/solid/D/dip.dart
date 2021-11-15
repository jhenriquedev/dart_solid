// DIP => Depender de abstrações e não de implementações

/*
  FORMA INCORRETA
class PagamentoRepository {
  void save() => print('Salvando no db.');
}

class Contacorrente {
  PagamentoRepository _repository;

  Contacorrente() {
    _repository = new PagamentoRepository();
  }

  void salvarModificacoes() {
    _repository.save(); 
  }
}
*/

// COMO CORRIGIR
abstract class IPagamentoRepository {
  void save();
}

class PagamentoRepositoryImpl implements IPagamentoRepository {
  @override
  void save() => print('Implementação');
}

//Mock de dados que pode ser utilizado em testes
class PagamentoRepositoryMock implements IPagamentoRepository {
  @override
  void save() => print('Mock');
}

class ContaCorrente {
  IPagamentoRepository _repository;

  ContaCorrente(IPagamentoRepository repository) {
    _repository = repository;
  }

  void salvarModificacoes() {
    _repository.save();
  }
}

main(List<String> args) {
  //Utilizando conta corrente com uma implementação
  ContaCorrente c = ContaCorrente(PagamentoRepositoryImpl());
  c.salvarModificacoes();

  //Utilizando o mock 
  ContaCorrente cMock = ContaCorrente(PagamentoRepositoryMock());
  cMock.salvarModificacoes();
}
