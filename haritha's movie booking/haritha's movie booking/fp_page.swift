//
//  fp_page.swift
//  haritha's movie booking
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 gyh. All rights reserved.
//

import UIKit

class fp_page: UIViewController {

    @IBOutlet weak var re_np: UITextField!
    @IBOutlet weak var np: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func submit(_ sender: Any) {
        if np.text == "Hari1" && re_np.text == "Hari1" {
            performSegue(withIdentifier: "tohome", sender: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
