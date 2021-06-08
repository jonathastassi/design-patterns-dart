import 'dart:developer';

import '../1 - AbstractProduct/tag.dart';
import '../utils.dart';

class SemParar extends Tag {
  SemParar(String placa) : super(placa);

  @override
  Future<bool> registrarCobranca(double valor) async {    
    await Future.delayed(Duration(milliseconds: 700));    
    
    final result = getRandomNumber(1, 2) == 1 ? true : false;

    print("SEM PARAR - Cobrança para a placa $placa no valor de $valor - Passagem: ${ result == true ? 'liberada' : 'retida'} ${DateTime.now()}");

    return result;
  }
}