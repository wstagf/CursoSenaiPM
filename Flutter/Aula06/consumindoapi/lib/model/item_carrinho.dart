// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bibliotecaoop/model/produto_model.dart';

class ItemCarrinho {
  int quantidade;
  ProdutoModel produto;
  ItemCarrinho({
    required this.quantidade,
    required this.produto,
  });

  ItemCarrinho copyWith({
    int? quantidade,
    ProdutoModel? produto,
  }) {
    return ItemCarrinho(
      quantidade: quantidade ?? this.quantidade,
      produto: produto ?? this.produto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantidade': quantidade,
      'produto': produto.toMap(),
    };
  }

  factory ItemCarrinho.fromMap(Map<String, dynamic> map) {
    return ItemCarrinho(
      quantidade: map['quantidade'] as int,
      produto: ProdutoModel.fromMap(map['produto'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemCarrinho.fromJson(String source) =>
      ItemCarrinho.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ItemCarrinho(quantidade: $quantidade, produto: $produto)';

  @override
  bool operator ==(covariant ItemCarrinho other) {
    if (identical(this, other)) return true;

    return other.quantidade == quantidade && other.produto == produto;
  }

  @override
  int get hashCode => quantidade.hashCode ^ produto.hashCode;
}
