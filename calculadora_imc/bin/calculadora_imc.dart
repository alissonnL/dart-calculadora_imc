import 'dart:io';
import 'dart:math';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/lista_pessoas.dart';

String lerEntrada(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync() ?? '';
}

void main() {
  ListaPessoas lista = ListaPessoas();

  print("===== CALCULADORA IMC =====");
  while (true) {
    String nome = lerEntrada("\nDigite o nome ou \"sair\" para encerrar: ");
    if (nome == '') {
      continue;
    } else if (nome.toLowerCase() == "sair") {
      break;
    }

    double altura;

    do {
      altura = Pessoa.validarDouble(lerEntrada("\nDigite a altura (metros): "));
    } while (altura == 0);

    double peso;

    do{
      peso = Pessoa.validarDouble(lerEntrada("\nDigite o peso: "));
    }while(peso == 0);

    lista.listagem.add(
      Pessoa(nome, peso, altura, (peso / pow(altura, 2)))
    );

    print("\n");
    print(lista.listagem.last);
  }
  for (var element in lista.listagem) {
    print("\n$element");
  }
}
