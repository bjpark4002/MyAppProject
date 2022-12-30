import Foundation
import SwiftUI


class FileModel{
    
    
    static let singleton = FileModel()
    
    private init (){
        
    }
    
    // Write image data to file in local documents directory
    func saveImage(image: UIImage, fileName: String) -> Bool {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return false }
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        guard let imageData = image.jpegData(compressionQuality: 1) else { return false }
        do {
            try imageData.write(to: fileURL)
            return true
        } catch {
            print(error)
            return false
        }
    }
    
    // Load image from file in local documents directory
    func loadImage(fileName: String) -> UIImage? {
        let fileURL = getFileURL(fileName: fileName)
        do {
            let imageData = try Data(contentsOf: fileURL)
            return UIImage(data: imageData)
        } catch {
            print(error)
            return nil
        }
    }
    
    // Get file URL for specified file name
    func getFileURL(fileName: String) -> URL {
        let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(fileName)
        return fileURL
    }
}
