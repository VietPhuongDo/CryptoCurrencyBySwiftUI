//
//  CoinModel.swift
//  CryptoCurrency
//
//  Created by PhuongDo on 03/04/2023.
//

import Foundation

// CoinGecko API
/*
 URL: 　

 JSON response:
 
   {
 "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
    "current_price": 28220,
    "market_cap": 545454183939,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 592354010143,
    "total_volume": 14910071715,
    "high_24h": 28418,
    "low_24h": 27732,
    "price_change_24h": 251.29,
    "price_change_percentage_24h": 0.89845,
    "market_cap_change_24h": 4156777758,
    "market_cap_change_percentage_24h": 0.76793,
    "circulating_supply": 19337318,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 69045,
    "ath_change_percentage": -59.15738,
    "ath_date": "2021-11-10T14:24:11.849Z",
    "atl": 67.81,
    "atl_change_percentage": 41486.94722,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-04-04T23:16:50.940Z",
    "sparkline_in_7d": {
      "price": [
        26907.739194785794,
        27348.21824936017,
        27481.713143173212,
        27339.01100642764,
        27229.31622774952,
        27240.192002734282,
        27291.3500210497,
        27309.532592901374,
        27341.587821487923,
        27430.04766565408,
        27386.853888167905,
        27603.700486381702,
        27577.964443645193,
        28058.08255475024,
        28113.907394924812,
        28578.320624437834,
        28360.641204405787,
        28398.806753669505,
        28365.426589110797,
        28397.73097356602,
        28396.988842812163,
        28305.696135812595,
        28452.439593706004,
        28238.370703020413,
        28258.555701704565,
        28342.04712154272,
        28432.611735261013,
        28417.104616134024,
        28423.435523623306,
        28420.72988251652,
        28394.997780199057,
        28340.814462209884,
        28378.845201566335,
        29021.35212033292,
        28578.00864398119,
        28640.886467583445,
        28623.672477177694,
        28667.97512947155,
        28736.972258532056,
        28661.39416979196,
        28616.57188936186,
        28591.455067420997,
        28682.10047654948,
        28683.25845465232,
        28512.699517800833,
        28441.78263686473,
        28314.489463567494,
        28278.646355863617,
        27801.284950421323,
        27893.67508385982,
        28010.60171816179,
        28179.752814322535,
        28079.024946210586,
        27915.007825963992,
        28041.123080088284,
        28313.085380426633,
        28167.774941759057,
        28187.049867761845,
        28208.51780023613,
        28238.343007178697,
        28067.573064673663,
        28102.470225017663,
        27755.849630502697,
        27843.27172950751,
        27834.11811146376,
        27952.205531422333,
        27973.01090521896,
        28098.568480575395,
        28433.95699730183,
        28573.195069797803,
        28453.70588056674,
        28427.133069662952,
        28331.91907922445,
        28396.930826425294,
        28480.679190765833,
        28449.801858037066,
        28545.696125542672,
        28614.720752692487,
        28512.59557632949,
        28461.85231762472,
        28630.791082786527,
        28616.450159987104,
        28592.13249069683,
        28614.036511384336,
        28606.087345747008,
        28516.00446026185,
        28482.773400308706,
        28489.062789309723,
        28472.541617701205,
        28497.089317751925,
        28431.090850350232,
        28466.964412373334,
        28453.623792675688,
        28369.27869767466,
        28426.160144518566,
        28370.86183763751,
        28393.676717620543,
        28383.38686781035,
        28432.913648887734,
        28492.864870796544,
        28505.277241162796,
        28564.345476006813,
        28498.94463304862,
        28403.25263834422,
        28442.2224689886,
        28467.103894987176,
        28517.272533917327,
        28487.426973853362,
        28501.654471492504,
        28504.51050870916,
        28473.277004171265,
        28412.27804902953,
        28445.869300072864,
        28429.943625881864,
        28388.710003219458,
        28307.968056852653,
        28332.15046338308,
        28318.308509846203,
        28175.355686579394,
        28183.665119265013,
        28243.137702410924,
        28228.88842602772,
        28062.663620601237,
        28135.20345675213,
        28047.225221894947,
        28137.427100096582,
        28242.70792495667,
        28153.216356059926,
        27731.186467529376,
        27789.901993775264,
        27813.616907970005,
        27685.863218282448,
        27742.19048696542,
        27775.398120697984,
        27974.12349256964,
        28353.10087338,
        28365.158553817495,
        28354.626765787296,
        28298.63388116931,
        28181.076894144888,
        28257.79514031741,
        28054.965491108025,
        28062.580504620128,
        28045.57857633993,
        28025.392925692067,
        28183.587869681913,
        28115.525959322884,
        27629.00805255512,
        27832.500814526797,
        27832.4729690141,
        27815.42653124798,
        27789.60027092099,
        27855.86054002738,
        27931.757218125018,
        27911.60390022797,
        27845.144820465222,
        27935.229910451228,
        28138.451687039073,
        28013.378286016043,
        28088.674361572674,
        28182.64756150609,
        28233.343436881743,
        28305.012139287173,
        28280.005005551244,
        28129.4876628722,
        28195.613349729876,
        28051.714934238462,
        28111.743520868433
      ]
    },
    "price_change_percentage_24h_in_currency": 0.8984511408383614
   }
 */
import Foundation


struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
