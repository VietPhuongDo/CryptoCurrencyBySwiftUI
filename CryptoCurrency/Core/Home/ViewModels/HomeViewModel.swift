//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by PhuongDo on 05/04/2023.
//

import Foundation
import Combine
class HomeViewModel:ObservableObject{
    
    @Published var statistics: [StatisticModel] = []
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var  searchText: String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        addSubscribers()
    }
    
    func addSubscribers(){
        // update allCoins
        $searchText
            .combineLatest(coinDataService.$allCoins)
            .map(filterCoins)
            .sink{ [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        // update market data
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink{ [weak self] (returnedStats) in
            self?.statistics = returnedStats
        }
        .store(in: &cancellables)
    }
    
    private func filterCoins(text: String, coins : [CoinModel]) -> [CoinModel]{
        guard !text.isEmpty else{
            return coins
        }
        // Bitcoin -> bitcoin
        let lowercasedText = text.lowercased()
        
        return coins.filter { (coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
    
    private func mapGlobalMarketData(marketDataModel: MarketDataModel?) -> [StatisticModel]{
        var stats: [StatisticModel] = []
        
        guard let data = marketDataModel else{
            return stats
        }
         
        let marketCap = StatisticModel(title: "Market Cap", value: data.marketCap,percentageChange:data.marketCapChangePercentage24HUsd)
        let volume = StatisticModel (title: "24h Volume", value: data.volume)
        let btcDominance = StatisticModel(title: "BTC Dominance", value: data.btcDominance)
        let portfolio = StatisticModel(title: "Portfolio Value", value: "$0.00", percentageChange: 0)
        
        stats.append(contentsOf: [
            marketCap,volume,btcDominance,portfolio
        ])
        return stats
    }
     
}
