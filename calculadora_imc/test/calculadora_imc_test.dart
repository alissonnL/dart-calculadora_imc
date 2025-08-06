import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';


void main() {
  test("Validacao altura/peso", (){
    expect(Pessoa.validarDouble("50"), 50);
  });
}