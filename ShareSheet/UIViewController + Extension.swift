import UIKit

extension UIViewController {
    func presentShareSheet(for object: Object) {
        guard let text = object.text,
                let image = object.image,
                    let url = object.url else {
                return
        }
        
        let activityViewController = UIActivityViewController(activityItems: [text, image, url], applicationActivities: [])
        present(activityViewController, animated: true, completion: nil)
    }
}
