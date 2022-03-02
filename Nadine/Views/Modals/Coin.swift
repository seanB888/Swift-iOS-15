//
//  Coin.swift
//  Nadine
//
//  Created by SEAN BLAKE on 3/1/22.
//

import SwiftUI

struct Coin: Identifiable, Decodable {
    var id: Int
    var uid: String
    var coin_name: String
    var acronym: String
    var logo: String
}

class CoinModel: ObservableObject {
    @Published var coins: [Coin] = []

    @MainActor
    func fetchCoins() async {
        do {
            let url = URL(string: "https://random-data-api.com/api/crypto_coin/random_crypto_coin?size=10")!
            let (data, _) = try await URLSession.shared.data(from: url)
            coins = try JSONDecoder().decode([Coin].self, from: data)
        } catch {
            print("Error")
        }
    }
}
