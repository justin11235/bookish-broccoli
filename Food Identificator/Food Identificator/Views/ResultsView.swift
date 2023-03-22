//
//  ResultsView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-02-13.
//

import SwiftUI
import CoreML
import UIKit

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

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    private let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(systemName: "photo")
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()
    
    private let label: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.text = "Select Image"
            label.numberOfLines = 0
            return label
        }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        imageView.frame = CGRect(
            x: 20,
            y: view.safeAreaInsets.top,
            width: view.frame.size.width-40,
            height: view.frame.size.width-40)
        label.frame = CGRect(
            x: 20,
            y: view.safeAreaInsets.top+(view.frame.size.width-40)+10,
            width: view.frame.size.width-40,
            height: 100
        )
    }

    
    private func analyzeImage(image: UIImage?)
    {
        guard let buffer = image?.resize(size: CGSize(width: 224, height: 224))?
                .getCVPixelBuffer() else {
            return
        }

        do {
            let config = MLModelConfiguration()
            let model = try SmallTestSet(configuration: config)
            let input = SmallTestSetInput(image: buffer)
            // this error might be due to the config of the model being different
            let output = try model.prediction(input: input)
            let text = output.sceneLabel
            // another error, need to figure out the correct output parameters of the model
            label.text = text
        }
        catch {
            print(error.localizedDescription)
        }
    }
}
