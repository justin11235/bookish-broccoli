//
//  ContentView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    
    var body: some View {
        
        NavigationView{
            
            //                Text("Food Identifier")
            //                    .font(.largeTitle)
            //                    .fontWeight(.semibold)
            //                    .multilineTextAlignment(.center)
            //                    .bold()
            //                    .padding(.bottom)
            //                    Divider()
            
            VStack {
                
                Image(uiImage: image ?? UIImage(named: "placeholder")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
                    .clipped()
                    .padding()
                
                Button("Choose Picture") {
                    self.showSheet = true
                }
                .padding(1)
                .actionSheet(isPresented: $showSheet) {
                    ActionSheet(title: Text("Select Photo"), message: Text("Choose"), buttons: [
                        .default(Text("Photo Library")) {
                            self.showImagePicker = true
                            self.sourceType = .photoLibrary
                        },
                        .default(Text("Camera")) {
                            self.showImagePicker = true
                            self.sourceType = .camera
                        },
                        .cancel()
                    ])
                }
                
                NavigationLink("Process Image", destination: ResultsView())
                    .padding(1)
                NavigationLink("Examples", destination: ExamplesView())
                    .padding(1)
                NavigationLink("History", destination: HistoryView())
                    .padding(1)
                NavigationLink("About", destination: AboutView())
                    .padding(1)
            }
            .navigationTitle("Food Classification")
            
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
