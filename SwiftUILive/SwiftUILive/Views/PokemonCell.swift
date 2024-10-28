//
//  PokemonCell.swift
//  SwiftUILive
//
//  Created by Ian Pacini on 28/10/24.
//

import SwiftUI

struct PokemonCell: View {
    let pokemon: Pokemon
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: pokemon.sprite)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.gray, lineWidth: 2))
                    .padding(8)
            } placeholder: {
                ProgressView()
            }
            .frame(height: 120)
            
            
            Spacer()
            
            Text(pokemon.name)
        }
    }
}

#Preview {
    PokemonCell(pokemon: JSONReader().decodePokemons()!.pokemons.first!)
}
