import '../1 - AbstractProduct/tag.dart';
import '../utils.dart';

class C6Tag extends Tag {
  C6Tag(String placa) : super(placa);

  @override
  Future<bool> registrarCobranca(double valor) async {
    await Future.delayed(Duration(milliseconds: 700));    
    
    final result = getRandomNumber(1, 2) == 1 ? true : false;
    
    print("C6Tag - Cobrança para a placar $placa no valor de $valor - Passagem: ${ result == true ? 'liberada' : 'retida'}");

    return result;
  }
}