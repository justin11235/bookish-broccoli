//
//  CameraView.swift
//  Food Identificator
//
//  Created by Justin Tung on 2023-03-03.
//

//import AVFoundation
import SwiftUI
//import UIKit

struct CameraView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}

//class ViewController: UIViewController {
//
//    //Capture Session
//    var session: AVCaptureSession?
//
//    //Photo Output
//    let output = AVCapturePhotoOutput()
//
//    //Video Preview
//    let previewLayer = AVCaptureVideoPreviewLayer()
//
//    //Shutter button
//    private let shutterButton: UIButton = {
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//        button.layer.cornerRadius = 100
//        button.layer.borderWidth = 10
//        button.layer.borderColor = UIColor.white.cgColor
//        return button
//    }()
//
//    func viewDIDLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .black
//        view.layer.addSublayer(previewLayer)
//        view.addSubview(shutterButton)
//
//        checkCameraPermissions()
//
//        shutterButton.addTarget(self, action: #selector(didTapTakePhoto), for: .touchUpInside)
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        previewLayer.frame = view.bounds
//
//        shutterButton.center = CGPoint(x: view.frame.size.width/2, y: view.frame.size.height - 200)
//    }
//
//    private func checkCameraPermissions() {
//        switch AVCaptureDevice.authorizationStatus(for: .video) {
//        case .notDetermined:
//            //Request
//            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in guard granted else {
//                return
//            }
//                DispatchQueue.main.async {
//                    self?.setUpCamera()
//                }
//            }
//        case .restricted:
//            break
//        case .denied:
//            break
//        case .authorized:
//            setUpCamera()
//        @unknown default:
//            break
//        }
//
//    }
//
//    private func setUpCamera() {
//        let session = AVCaptureSession()
//        if let device = AVCaptureDevice.default(for: .video) {
//            do {
//                let input = try AVCaptureDeviceInput(device: device)
//                if session.canAddInput(input) {
//                    session.addInput(input)
//                }
//                if session.canAddOutput(output) {
//                    session.addOutput(output)
//                }
//
//                previewLayer.videoGravity = .resizeAspectFill
//                previewLayer.session = session
//
//                session.startRunning()
//                self.session = session
//            }
//            catch {
//                print(error)
//            }
//        }
//    }
//
//    @objc private func didTapTakePhoto() {
//        output.capturePhoto(with: AVCapturePhotoSettings(), delegate: self)
//    }
//}
//
//extension ViewController: AVCapturePhotoCaptureDelegate {
//    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
//        guard let data = photo.fileDataRepresentation() else {
//            return
//        }
//        let image = UIImage(data: data)
//
//        session?.stopRunning()
//
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFill
//        imageView.frame = view.bounds
//        view.addSubview(imageView)
//    }
//}
