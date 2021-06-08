import 'dart:ffi';

abstract class Tag {
  final String placa;

  Tag(this.placa);

  Future<bool> registrarCobranca(double valor);
}