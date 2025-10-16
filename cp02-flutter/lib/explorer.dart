class Oficina {
  final String nome;
  final String servico;

  Oficina({required this.nome, required this.servico});

  String presenterNome(){
    return "Nome: $nome";
  }

  String presenterServico(){
    return "Serviço: $servico";
  }
}