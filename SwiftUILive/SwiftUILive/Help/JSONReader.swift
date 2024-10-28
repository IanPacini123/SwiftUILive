//
//  JSONReader.swift
//  UIKitLive
//
//  Created by Ian Pacini on 21/10/24.
//

import Foundation

class JSONReader {
    
    func decodePokemons() -> PokemonList? {
        if let path = Bundle.main.path(forResource: "pokemons", ofType: "json") {
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let pokemons = try decoder.decode(PokemonList.self, from: data)
                return pokemons
            } catch {
                print("Erro ao decodificar o JSON: \(error)")
                return nil
            }
        } else {
            print("Erro: arquivo JSON não encontrado no bundle.")
            return nil
        }
    }

}
