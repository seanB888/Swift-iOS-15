//
//  Sugges.swift
//  Nadine
//
//  Created by SEAN BLAKE on 2/22/22.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "Swift for"),
    Suggestion(text: "React"),
    Suggestion(text: "Oxtail"),
    Suggestion(text: "How"),
    Suggestion(text: "Speak")
]
