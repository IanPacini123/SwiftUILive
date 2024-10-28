//
//  PokemonListView.swift
//  SwiftUILive
//
//  Created by Ian Pacini on 28/10/24.
//

import SwiftUI

struct PokemonListView: View {
    let viewModel = PokemonListViewModel()
    
    var body: some View {
        List {
            Section {
                ForEach(viewModel.pokemons) { pokemon in
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
