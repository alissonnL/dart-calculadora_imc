class Pessoa {
  final String _nome;
  double _peso;
  double _altura;
  double _imc;

  Pessoa(this._nome, this._peso, this._altura, this._imc);

  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;
  void setImc(double imc) => _imc = imc;

  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;
  double getImc() => _imc;

  static double validarDouble(String numero) {
    try {
      return double.parse(numero);
    } catch (_) {
      print("Digite um valor numérico válido.");
      return 0;
    }
  }

  @override
  String toString() {
    return ('Nome: $_nome\nPeso: $_peso kg\nAltura: $_altura m\nIMC: ${_imc.toStringAsFixed(2)}');
  }
}
