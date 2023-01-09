import 'dart:convert';

class Categoria {
  final String nome;
  final String imagem;
  Categoria({
    required this.nome,
    required this.imagem,
  });

  Categoria copyWith({
    String? nome,
    String? imagem,
  }) {
    return Categoria(
      nome: nome ?? this.nome,
      imagem: imagem ?? this.imagem,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nome': nome});
    result.addAll({'imagem': imagem});

    return result;
  }

  factory Categoria.fromMap(Map<String, dynamic> map) {
    return Categoria(
      nome: map['nome'] ?? '',
      imagem: map['imagem'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Categoria.fromJson(String source) =>
      Categoria.fromMap(json.decode(source));

  @override
  String toString() => 'Categoria(nome: $nome, imagem: $imagem)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Categoria && other.nome == nome && other.imagem == imagem;
  }

  @override
  int get hashCode => nome.hashCode ^ imagem.hashCode;
}
