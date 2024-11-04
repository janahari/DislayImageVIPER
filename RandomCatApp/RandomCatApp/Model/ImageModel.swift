//
//  ImageModel.swift
//  RandomCatApp
//
//  Created by Hari Prasad Jana on 04/11/24.
//

import Foundation

struct ImageModel: Decodable {
    let id: String
    let url: String
    let width: Int
    let height: Int
}
// FactModel.swift
struct FactModel: Decodable {
    let fact: String
}
