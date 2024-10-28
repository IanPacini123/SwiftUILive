//
//  PokemonListView.swift
//  SwiftUILive
//
//  Created by Ian Pacini on 28/10/24.
//

import SwiftUI

struct PokemonListView: View {
    let pokemonList = JSONReader().decodePokemons()!.pokemons
    var body: some View {
        List {
            Section {
                ForEach(pokemonList) { pokemon in
                    PokemonCell(pokemon: pokemon)
                        .padding(.horizontal)
                }
            } header: {
                Text("Pokemons!")
                    .foregroundStyle(.black)
                    .font(.title)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    PokemonListView()
}
