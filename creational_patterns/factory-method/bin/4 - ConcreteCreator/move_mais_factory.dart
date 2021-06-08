import '../1 - AbstractProduct/tag.dart';
import '../2 - ConcreteProduct/move_mais.dart';
import '../3 - AbstractCreator/tag_pedagio_factory.dart';

class MoveMainFactory extends TagPedagio {
  @override
  Tag inicializarCobranca(String placa) => MoveMais(placa);
}