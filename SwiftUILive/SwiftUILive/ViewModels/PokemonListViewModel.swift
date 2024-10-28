//
//  PokemonListViewModel.swift
//  SwiftUILive
//
//  Created by Ian Pacini on 28/10/24.
//

import Foundation

@Observable
class PokemonListViewModel {
    var pokemons: [Pokemon] = []
    
    init() {
        let reader = JSONReader()
        self.pokemons = reader.decodePokemons()!.pokemons
    }
}
