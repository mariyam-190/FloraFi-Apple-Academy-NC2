//
//  CamView.swift
//  FloraFi
//
//  Created by roaa on 06/08/1445 AH.
//
import SwiftUI
import AVFoundation
import CoreML
import Vision

struct CamView: View {
    @State private var isSheetPresented = false
    @State private var capturedImage: UIImage?
    @State private var classificationResult: String?
    @State private var isImageCaptured = false

    var body: some View {
        VStack {
            Spacer()
        
            Text("قم بالتقاط صورة للنبتة                                           التي تود التعرف على اسمها")
                .font(.system(size: 20))
                .padding(.leading, 100)
            
            Spacer()

            if isImageCaptured {
                if let image = capturedImage {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                    if let result = classificationResult {
                        Text("Classification: \(result)")
                    }
                }
            } else {
                // Add the CameraView only if the image is not captured
                CameraView(capturedImage: $capturedImage, classificationResult: $classificationResult, isImageCaptured: $isImageCaptured)
                    .frame(width: 300, height: 500) // Set the size of the camera thumbnail
            }

            Spacer()
        }
    }
}

struct CameraView: UIViewControllerRepresentable {
    @Binding var capturedImage: UIImage?
    @Binding var classificationResult: String?
    @Binding var isImageCaptured: Bool // Add a binding for tracking if the image is captured

    static var coordinator: Coordinator?

    static func openCamera(capturedImage: Binding<UIImage?>, classificationResult: Binding<String?>, isImageCaptured: Binding<Bool>) {
        // ... implementation of openCamera ...
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(capturedImage: $capturedImage, classificationResult: $classificationResult, isImageCaptured: $isImageCaptured)
    }

    final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var capturedImage: UIImage?
        @Binding var classificationResult: String?
        @Binding var isImageCaptured: Bool

        init(capturedImage: Binding<UIImage?>, classificationResult: Binding<String?>, isImageCaptured: Binding<Bool>) {
            _capturedImage = capturedImage
            _classificationResult = classificationResult
            _isImageCaptured = isImageCaptured
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[.originalImage] as? UIImage {
                capturedImage = image
                classifyImage(image)
                isImageCaptured = true // Set the flag to indicate that the image is captured
            }
            picker.dismiss(animated: true)
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }

        func classifyImage(_ image: UIImage) {
            guard let ciImage = CIImage(image: image) else {
                classificationResult = "Error: Unable to create CIImage from UIImage"
                return
            }

            do {
                let model = MyImageClassifier_plan_1().model
                let visionModel = try VNCoreMLModel(for: model)
                let request = VNCoreMLRequest(model: visionModel) { [self] request, error in
                    if let results = request.results as? [VNClassificationObservation], let topResult = results.first {
                        if topResult.confidence >= 0.9 {
                            classificationResult = "\(topResult.identifier) (\(topResult.confidence))"
                        } else {
                            classificationResult = "Unable to recognize image with certainty."
                        }
                    } else {
                        classificationResult = "Unable to classify"
                    }
                }

                let handler = VNImageRequestHandler(ciImage: ciImage)
                try handler.perform([request])
            } catch {
                print("Error classifying image: \(error)")
                classificationResult = "Error: \(error.localizedDescription)"
            }
        }

        static func openCamera(capturedImage: Binding<UIImage?>, classificationResult: Binding<String?>, isImageCaptured: Binding<Bool>) {
            let coordinator = Coordinator(capturedImage: capturedImage, classificationResult: classificationResult, isImageCaptured: isImageCaptured)
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.delegate = coordinator
            UIApplication.shared.windows.first?.rootViewController?.present(imagePicker, animated: true, completion: nil)
        }
    }
}

struct CamView_Previews: PreviewProvider {
    static var previews: some View {
        CamView()
            .background(
                Image("back2")
                    .resizable()
                    .padding(.top, -20.0)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
    }
}
