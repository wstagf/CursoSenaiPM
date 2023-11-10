// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProdutoModel {
  int id;
  String tipo;
  String nome;
  String alt;
  double preco;
  String imagemURL;

  ProdutoModel({
    required this.id,
    required this.tipo,
    required this.nome,
    required this.alt,
    required this.preco,
    required this.imagemURL,
  });

  ProdutoModel copyWith({
    int? id,
    String? tipo,
    String? nome,
    String? alt,
    double? preco,
    String? imagemURL,
  }) {
    return ProdutoModel(
      id: id ?? this.id,
      tipo: tipo ?? this.tipo,
      nome: nome ?? this.nome,
      alt: alt ?? this.alt,
      preco: preco ?? this.preco,
      imagemURL: imagemURL ?? this.imagemURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tipo': tipo,
      'nome': nome,
      'alt': alt,
      'preco': preco,
      'imagemURL': imagemURL,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      id: 0, // map['id'] as int,
      tipo: map['tipo'] as String,
      nome: map['nome'] as String,
      alt: map['alt'] as String,
      preco: double.parse(map['preco'].toString()),
      imagemURL: map['imagemURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) =>
      ProdutoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProdutoModel(id: $id, tipo: $tipo, nome: $nome, alt: $alt, preco: $preco, imagemURL: $imagemURL)';
  }

  @override
  bool operator ==(covariant ProdutoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.tipo == tipo &&
        other.nome == nome &&
        other.alt == alt &&
        other.preco == preco &&
        other.imagemURL == imagemURL;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        tipo.hashCode ^
        nome.hashCode ^
        alt.hashCode ^
        preco.hashCode ^
        imagemURL.hashCode;
  }

  String get precoFormatado {
    return 'R\$' + preco.toStringAsFixed(2).replaceAll(".", ",");
  }
}
