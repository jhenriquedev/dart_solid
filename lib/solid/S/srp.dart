// S => (SRP) => Princípio da Responsabilidade Única

/*
CÓDIGO QUE FERE O PRINCIPIO DA RESPONSABILIDADE UNICA

class ContaCorrente {
  validarContaExistente() {
    // Lógica crucial do negócio
  }

  salvarModificacoes() {
    print('Salvando db');
  }
}
*/

// Forma adequada
class ContaCorrenteRepository {
  void save() => print('Salvando no db.');
}

class ContaCorrente {
  ContaCorrenteRepository _repository = new ContaCorrenteRepository();

  validarContaExistente() {}

  void salvarModificacoes() {
    _repository.save(); 
  }
}
