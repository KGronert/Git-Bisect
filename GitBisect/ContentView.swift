//
//  ContentView.swift
//  GitBisect
//
//  Created by Kamil Gronert on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    private let provider: ContentProvider = ContentProvierImpl()
        
    var body: some View {
        VStack {
            Image(systemName: provider.icon)
                .resizable()
                .frame(width: 40.0, height: 40.0)
                .foregroundColor(.accentColor)
            Text(provider.title)
                .bold()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(provider.background)
    }
}
