import '../1 - AbstractProduct/tag.dart';
import '../4 - ConcreteCreator/c6_tag_factory.dart';
import '../4 - ConcreteCreator/move_mais_factory.dart';
import '../4 - ConcreteCreator/sem_parar_factory.dart';
import '../4 - ConcreteCreator/veloe_factory.dart';
import '../tag_type.dart';

abstract class TagPedagio {

  Tag inicializarCobranca(String placa);

  static TagPedagio selecionarTag(TagType tagType) {
    switch(tagType) {
      case TagType.MoveMais:
        return MoveMainFactory();
      case TagType.SemParar:
        return SemPararFactory();
      case TagType.Veloe:
        return VeloeFactory();
      case TagType.C6Tag:        
        return C6TagFactory();
    }
  }
}