//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Gonzalo Olvera Monroy on 18/01/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "A98F4D61-A0E3-438C-94C3-E7EE00024DF5"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    var delegate: CoinManagerDelegate?

    
    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, responde, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                /*if let safeData = data {
                    if let coin = self.parseJSON(safeData) {
                        self.delegate?.didUpdateCoin(self, coin: coin)
                    }
                }*/
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSON(safeData) {
                        let price = String(format: "%.2f", bitcoinPrice)
                        self.delegate?.didUpdateCoin(price: price, currency: currency)
                    }
                }
               
            }
            task.resume()
        }
        
       // performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, responde, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                /*if let safeData = data {
                    if let coin = self.parseJSON(safeData) {
                        self.delegate?.didUpdateCoin(self, coin: coin)
                    }
                }*/
               
            }
        }
    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodeData.rate
            print(lastPrice)
            
            return lastPrice
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
