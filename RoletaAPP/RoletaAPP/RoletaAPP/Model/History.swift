//
//  History.swift
//  RoletaAPP
//
//  Created by Wesley Prado on 03/01/2023.
//

import Foundation

//MARK: Decodable
//Decodifica, ou seja, transforma um tipo de JSON em um objeto Swift.

//MARK: Encodable
// Codifica, ou seja, transforma um tipo de dado no Swift em JSON.

//MARK: Codable
// Codifica e decodifica.

// MARK: - History
struct History: Codable {
    var totalValue: Double?
    var historyAccountList: [HistoryAccountList]?
}

// MARK: - HistoryAccountList
struct HistoryAccountList: Codable {
    var historyID, date, name: String?
    var price: Double?
    var iconImage: String?
}
