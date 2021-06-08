import '../1 - AbstractProduct/tag.dart';
import '../2 - ConcreteProduct/sem_parar.dart';
import '../3 - AbstractCreator/tag_pedagio_factory.dart';

class SemPararFactory extends TagPedagio {
  @override
  Tag inicializarCobranca(String placa) => SemParar(placa);
}