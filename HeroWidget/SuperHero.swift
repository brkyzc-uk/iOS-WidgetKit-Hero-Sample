//
//  SuperHero.swift
//  HeroWidget
//
//  Created by Burak YAZICI on 25/04/2022.
//

import Foundation

struct SuperHero : Codable, Identifiable {
    
    var id : String { image }
    let image : String
    let name : String
    let realName : String
    
}

let superman = SuperHero(image: "superman", name: "Superman", realName: "Clark Kent")

let batman = SuperHero(image: "batman", name: "Batman", realName: "Bruce Wayne")

let spiderman = SuperHero(image: "spiderman", name: "Spiderman", realName: "Peter Parker")
