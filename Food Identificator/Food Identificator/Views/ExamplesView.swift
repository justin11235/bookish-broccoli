//
//  ExamplesView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct ExamplesView: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("Examples")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                Divider()
                    .position(x: 195, y: 0)
                Text("Key Considerations:")
                Image("placeholder")
                Image("placeholder")
                Image("placeholder")
            }
        }
    }
}

struct ExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesView()
    }
}
