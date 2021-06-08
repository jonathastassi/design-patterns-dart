import '../1 - AbstractProduct/tag.dart';
import '../2 - ConcreteProduct/c6_tag.dart';
import '../3 - AbstractCreator/tag_pedagio_factory.dart';

class C6TagFactory extends TagPedagio {
  @override
  Tag inicializarCobranca(String placa) => C6Tag(placa);
}