package com.example.nossaloja.ui.home


public class ProdutoModel {
    var id: Int = 0;
    var tipo: String = "";
    var nome: String = "";
    var alt: String= "";
    var preco: Double = 0.0;
    var imageURL: Int = 0;

    constructor()

    constructor(
        id: Int,
        tipo: String,
        nome: String,
        alt: String,
        preco: Double,
        imageURL: Int
        ) {
        this.id = id
        this.tipo = tipo
        this.nome = nome
        this.alt = alt
        this.preco = preco
        this.imageURL = imageURL
    }

    override fun toString(): String {
        return "Produto id: " + this.id + " Nome: " + this.nome
    }
}