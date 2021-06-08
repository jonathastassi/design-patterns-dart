import '3 - AbstractCreator/tag_pedagio_factory.dart';
import 'tag_type.dart';

class LeituraDeTag {
  final String tagName;
  final String placa;

  LeituraDeTag(this.tagName, this.placa);

}

const VALOR_PEDAGIO = 12.90;

void main(List<String> arguments) {
  final filaDeLeituras = [
    LeituraDeTag('sem_parar', 'ABC-1224'),
    LeituraDeTag('veloe', 'WEF-4234'),
    LeituraDeTag('veloe', 'TGR-7623'),
    LeituraDeTag('sem_parar', 'CVB-3422'),
    LeituraDeTag('tag_qualquer', 'CVB-3422'),
    LeituraDeTag('move_mais', 'EGR-6575'),
    LeituraDeTag('veloe', 'YYR-5433'),
    LeituraDeTag('c6_tag', 'DFB-1232'),    
    LeituraDeTag('sem_parar', 'WEE-3123'),
  ];

  filaDeLeituras.forEach(
    (leitura) { 
      try {
        TagPedagio.selecionarTag(tagNameToEnum(leitura.tagName))
        .inicializarCobranca(leitura.placa)
        .registrarCobranca(VALOR_PEDAGIO);
      } catch (e) {
        print('${e.toString()} - Data da ocorrência: ${DateTime.now()} - ${leitura.placa} : ${leitura.tagName} ');
      }
    }          
  );
}
