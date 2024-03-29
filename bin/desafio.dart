void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles

  for (var paciente in pacientes) {
    List<String> dadosPaciente = paciente.split('|');
    String nomePaciente = dadosPaciente[0];
    var idadePaciente = int.tryParse(dadosPaciente[1]) ?? 0;
    if (idadePaciente >= 20) {
      print(nomePaciente);
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)

  List<String> desenvolvedores = [];
  List<String> estudantes = [];
  List<String> dentista = [];
  List<String> jornalistas = [];
  
  for (var paciente in pacientes) {
    List<String> dadosPaciente = paciente.split('|');
    String profissaoPaciente = dadosPaciente[2].toLowerCase();
    String nomePaciente = dadosPaciente[0];

    if (profissaoPaciente == 'desenvolvedor') {
      desenvolvedores.add(nomePaciente);
    }

    if (profissaoPaciente == 'estudante') {
      estudantes.add(nomePaciente);
    }

    if (profissaoPaciente == 'dentista') {
      dentista.add(nomePaciente);
    }

    if (profissaoPaciente == 'jornalista') {
      jornalistas.add(nomePaciente);
    }
  }
  print('Desenvolvedores:');
  for (var desenvolvedor in desenvolvedores) {
    print(desenvolvedor);
  }

  print('Estudantes:');
  for (var nome in estudantes) {
    print(nome);
  }

  print('Dentistas:');
  for (var nome in dentista) {
    print(nome);
  }

  print('Jornalista:');
  for (var nome in jornalistas) {
    print(nome);
  }

  

  //! 3 - Apresente a quantidade de pacientes que moram em SP

    int count = 0;
  for (var paciente in pacientes) {
    List<String> dadosPaciente = paciente.split('|');
    String nomeCidade = dadosPaciente[3].toLowerCase();
    
    if (nomeCidade == 'sp') {
      count++;
    }
    
  }
  print('Existem $count pessoa que mora em São Paulo');
}
