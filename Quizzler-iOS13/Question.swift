//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ayan Williams on 12/2/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
