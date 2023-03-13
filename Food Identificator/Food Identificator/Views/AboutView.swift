//
//  AboutView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("About")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Divider()
                    .position(x: 195, y: 0)
                Text("Group 17...")
                    .position(x: 195, y: 0)
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
