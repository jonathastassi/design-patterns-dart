import '../1 - AbstractProduct/tag.dart';
import '../2 - ConcreteProduct/veloe.dart';
import '../3 - AbstractCreator/tag_pedagio_factory.dart';

class VeloeFactory extends TagPedagio {
  @override
  Tag inicializarCobranca(String placa) => Veloe(placa);
}