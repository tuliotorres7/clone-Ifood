class Empresa {
  final String nome;
  final String categoria;
  final String frete;
  final String distancia;
  final double avaliacao;
  final List<int> tempoDePreparo;
  final bool favorito;
  final String fotoUrl;

  Empresa(
      {required this.nome,
      required this.categoria,
      required this.frete,
      required this.distancia,
      required this.avaliacao,
      required this.tempoDePreparo,
      required this.favorito,
      required this.fotoUrl});

  Empresa changeFav({bool? favorito}) {
    return Empresa(
        nome: this.nome,
        categoria: this.categoria,
        frete: this.frete,
        distancia: this.distancia,
        avaliacao: this.avaliacao,
        tempoDePreparo: this.tempoDePreparo,
        favorito: favorito ?? this.favorito,
        fotoUrl: this.fotoUrl);
  }

  Empresa copyWith(
      {String? nome,
      String? categoria,
      String? frete,
      String? distancia,
      double? avaliacao,
      List<int>? tempoDePreparo,
      bool? favorito,
      String? fotoUrl}) {
    return Empresa(
        nome: nome ?? this.nome,
        categoria: categoria ?? this.categoria,
        frete: frete ?? this.frete,
        distancia: distancia ?? this.distancia,
        avaliacao: avaliacao ?? this.avaliacao,
        tempoDePreparo: tempoDePreparo ?? this.tempoDePreparo,
        favorito: favorito ?? this.favorito,
        fotoUrl: fotoUrl ?? this.fotoUrl);
  }
}
