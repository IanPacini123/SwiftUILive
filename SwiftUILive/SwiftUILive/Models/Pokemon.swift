//
//  Pokemon.swift
//  SwiftUILive
//
//  Created by Ian Pacini on 28/10/24.
//

import Foundation

struct PokemonList: Codable {
    var pokemons: [Pokemon]
}

struct Pokemon: Codable, Identifiable {
    var id: Int
    var name: String
    var sprite: String
}
