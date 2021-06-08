enum TagType {
  MoveMais,
  SemParar,
  Veloe,
  C6Tag,
}

TagType tagNameToEnum(String tagName) {  
  switch(tagName) {
    case 'sem_parar': 
      return TagType.SemParar;
    case 'veloe':
      return TagType.Veloe;
    case 'move_mais':
      return TagType.MoveMais;
    case 'c6_tag':
      return TagType.C6Tag;      
    default:
      throw Exception('Tag não identificada');
  }
}