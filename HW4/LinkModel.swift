//
//  LinkModel.swift
//  HW4
//
//  Created by Arman on 12/28/21.
//

import SwiftUI

struct LinkModel: Codable, Identifiable, Hashable {
    var id = UUID()
    var title: String
    var linkURL: String
}
