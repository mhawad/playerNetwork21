//
//  GameRepository.swift
//  ThePLAYRNetworkApp
//
//  Created by Timmy Nguyen on 2/19/23.
//

import Foundation

class GameRepository: ObservableObject, GameApiService {
    @Published var upcomingGames: [Game] = []

    func fetchNearByGames() async -> [Game] {
        return []
    }
    
    func createGame() async {
        
    }
    
    func joinGame() async {
        
    }
    
}