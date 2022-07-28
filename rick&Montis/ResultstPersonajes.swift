//
//  ResultstPersonajes.swift
//  rick&Montis
//
//  Created by Catalina on 27-07-22.
//

import Foundation
//personajes
struct Resultst: Codable {
    let info: Info
    let results: [Result]
}
struct Info: Codable {
    let count, pages: Int
    let next: String
}
struct Result: Codable {
    let id: Int
    let name, status, species, type: String
    let gender: String
    let image: String
    let url: String
    let origin, location: Location
  
}
struct Location: Codable {
    let name: String
    let url: String
}

