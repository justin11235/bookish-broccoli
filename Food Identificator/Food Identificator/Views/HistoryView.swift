//
//  HistoryView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("History")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Divider()
                    .position(x: 195, y: 0)
                List {
                    NavigationLink("Save 1", destination: SaveView())
                    Text("Save 2")
                    Text("Save 3")
                }
                .position(x: 195, y: 0)
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
