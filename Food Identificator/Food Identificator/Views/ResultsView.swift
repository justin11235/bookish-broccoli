//
//  ResultsView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct ResultsView: View {
    var body: some View {
        VStack {
            Text("Results")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Divider()
                .position(x: 195, y: 0)
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
