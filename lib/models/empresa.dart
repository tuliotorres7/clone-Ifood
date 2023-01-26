import 'dart:convert';
import 'dart:ffi';

class Empresa {
  final String nome;
  final int categoria;
  final double frete;
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
      int? categoria,
      double? frete,
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

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nome': nome});
    result.addAll({'categoria': categoria});
    result.addAll({'frete': frete});
    result.addAll({'distancia': distancia});
    result.addAll({'avaliacao': avaliacao});
    result.addAll({'tempoDePreparo': tempoDePreparo});
    result.addAll({'favorito': favorito});
    result.addAll({'fotoUrl': fotoUrl});

    return result;
  }

  factory Empresa.fromMap(Map<String, dynamic> map) {
    return Empresa(
      nome: map['nome'] ?? '',
      categoria: map['categoria'] ?? 0,
      frete: map['frete']?.toDouble() ?? 0.0,
      distancia: map['distancia'] ?? '',
      avaliacao: map['avaliacao']?.toDouble() ?? 0.0,
      tempoDePreparo: [],
      favorito: map['favorito'] ?? false,
      fotoUrl: map['fotoUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Empresa.fromJson(String source) =>
      Empresa.fromMap(json.decode(source));
}
