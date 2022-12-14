import 'dart:io';

import '../model/bd/bd.dart';
import '../model/bd/pessoa_fisica_bd.dart';
import '../model/cpf.dart';
import '../model/documento.dart';
import '../model/endereco.dart';
import '../model/pessoa.dart';
import '../model/pessoa_fisica.dart';
import '../model/telefone.dart';
import 'pessoa_dao.dart';

class PessoaFisicaDAO extends PessoaDAO{
  BD bd = new PessoaFisicaBD();
  
  @override
  void adicionar() {
    print('Nome completo:');
    String? nome = stdin.readLineSync();
    print('Apelido:');
    String? apelido = stdin.readLineSync();
    print('Sexo:');
    String? sexo = stdin.readLineSync();

    print('Operadora:');
    String? operadora = stdin.readLineSync();
    print('Número:');
    String? numero = stdin.readLineSync();

    print('Numero do CPF');
    String? numeroD = stdin.readLineSync();

    print('Rua:');
    String? rua = stdin.readLineSync();
    print('Número:');
    String? n = stdin.readLineSync();
    int numC = int.parse(n!);
    print('Bairro:');
    String? bairro = stdin.readLineSync();
    print('Cidade:');
    String? cidade = stdin.readLineSync();
    print('Estado:');
    String? estado = stdin.readLineSync();
    print('CEP');
    String? cep = stdin.readLineSync();
    CPF documento = new CPF(numeroD!);
    Endereco endereco = new Endereco(rua!, numC, bairro!, cidade!, estado!, cep!);
    Telefone telefone = new Telefone(numero!, operadora!);
    Pessoa pessoa =
        new PessoaFisica(nome!, apelido!, sexo!, telefone, endereco, documento);
    print(pessoa);
    bd.adicionarPessoa(pessoa);
  }

  @override
  void alterar() {
    print(bd.buscarPessoa());
    print('Digite o número da pessoa que você quer remover:');
    String? num = stdin.readLineSync();
    int nn = int.parse(num!);

    print('Nome completo:');
    String? nome = stdin.readLineSync();
    print('Apelido:');
    String? apelido = stdin.readLineSync();
    print('Sexo:');
    String? sexo = stdin.readLineSync();

    print('Operadora:');
    String? operadora = stdin.readLineSync();
    print('Número:');
    String? numero = stdin.readLineSync();

    print('Numero do CPF');
    String? numeroD = stdin.readLineSync();

    print('Rua:');
    String? rua = stdin.readLineSync();
    print('Número:');
    String? n = stdin.readLineSync();
    int numC = int.parse(n!);
    print('Bairro:');
    String? bairro = stdin.readLineSync();
    print('Cidade:');
    String? cidade = stdin.readLineSync();
    print('Estado:');
    String? estado = stdin.readLineSync();
    print('CEP');
    String? cep = stdin.readLineSync();
    CPF documento = new CPF(numeroD!);
    Endereco endereco = new Endereco(rua!, numC, bairro!, cidade!, estado!, cep!);
    Telefone telefone = new Telefone(numero!, operadora!);
    Pessoa pessoa =
        new PessoaFisica(nome!, apelido!, sexo!, telefone, endereco, documento);
    print(pessoa);

    bd.alterarPessoa(pessoa, nn);
  }
  
  @override
  void buscar() {
    bd.buscarPessoa();
    print(bd.buscarPessoa());
  }
  
  @override
  void remover() {
    print(bd.buscarPessoa());
    print('Digite o número da pessoa que você quer remover:');
    String? num = stdin.readLineSync();
    int n = int.parse(num!);
    bd.removerPessoa(n);
  }
}