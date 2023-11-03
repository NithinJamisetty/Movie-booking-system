import UIKit
import WebKit

var moviename1 = String()
var movieimage1 = UIImage()
var trailerurl = URL(string: " ")


class trailerViewController: UIViewController {
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var trailer: UIWebView!
    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        desc.text = moviename1
        image1.image = movieimage1
        trailer.loadRequest(URLRequest(url: trailerurl!))
    }

    
    @IBOutlet weak var slider_value: UISlider!
    
    @IBOutlet weak var amount: UILabel!
    
    @IBAction func members_added(_ sender: Any) {
        amount.text = "\(Int(slider_value.value))"
    }
    @IBAction func bookticket(_ sender: Any) {
        performSegue(withIdentifier: "final", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var obj = segue.destination as! payment
        obj.totalCost = (Int(slider_value.value)*180)
    }
    
}
