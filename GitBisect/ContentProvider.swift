//
//  ContentProvider.swift
//  GitBisect
//
//  Created by Kamil Gronert on 30/05/2023.
//

import SwiftUI

protocol ContentProvider {
    var icon: String { get }
    var background: Color { get }
    var title: String { get }
}

class ContentProvierImpl: ContentProvider {
    var icon: String {
        "checkmark.shield"
    }

    var background: Color {
        .green
    }

    var title: String {
        "All good!"
    }
}
