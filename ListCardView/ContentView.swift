//
//  ContentView.swift
//  ListCardView
//
//  Created by mac on 20/12/2567 BE.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        List{
            PersonCardView(person:person1)
                .listRowSeparator(.hidden)
            PersonCardView(person:person2)
                .listRowSeparator(.hidden)
            PersonCardView(person:person3)
                .listRowSeparator(.hidden)
            PersonCardView(person:person4)
                .listRowSeparator(.hidden)
            PersonCardView(person:person1)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    ContentView()
}
