//
//  Model.swift
//  Nadine
//
//  Created by SEAN BLAKE on 2/23/22.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signIn
}

enum Modal: String {
    case signUp
    case signIn
}
