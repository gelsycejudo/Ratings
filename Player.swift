//
//  Player.swift
//  Ratings
//
//  Created by Gelsy Cejudo Valencia on 26/06/15.
//  Copyright (c) 2015 Gelsy Cejudo Valencia. All rights reserved.
//

import UIKit

class Player: NSObject {
    var name: String
    var game: String
    var rating: Int
    
    init(name: String, game: String, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
        super.init()
    }
}
