import UIKit

class ShareSheetViewController: UIViewController {

    @IBOutlet var exampleLabel: UILabel!
    @IBOutlet var exampleImageView: UIImageView!
    
    let exampleURL = URL(string: "https://ios-cookbook.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBAction Methods
    
    @IBAction func present(sender: Any?) {
        let object: Object = Object(text: exampleLabel.text, image: exampleImageView.image, url: exampleURL)
        presentShareSheet(for: object)
    }
}

