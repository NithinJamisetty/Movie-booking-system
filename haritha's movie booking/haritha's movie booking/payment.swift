import UIKit

class payment: UIViewController {
    @IBOutlet weak var tickets: UILabel!
    
    @IBOutlet weak var paid: UIButton!
    var totalCost = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        tickets.text = "Total Cost: Rs.\(totalCost)"
    }
    @IBAction func paymentDone(_ sender: Any) {
        let alert = UIAlertController(title: "Your Payment is Succesfully Completed!", message: "Please Check Your registered mobile number for tickets", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
