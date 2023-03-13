//
//  SaveView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct SaveView: View {
    var body: some View {
        VStack {
            Text("Save")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Divider()
                .position(x: 195, y: 0)
        }
    }
}

struct SaveView_Previews: PreviewProvider {
    static var previews: some View {
        SaveView()
    }
}
