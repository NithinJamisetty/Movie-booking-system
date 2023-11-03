//
//  ViewController.swift
//  haritha's movie booking
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 gyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var name: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginbt(_ sender: Any) {
        if let username = name.text, let password = pass.text, username == "Haritha" && password == "Haritha1" {
            performSegue(withIdentifier: "main", sender: nil)
        } else {
            // Handle incorrect login credentials here, e.g., show an alert
            let alert = UIAlertController(title: "Invalid Login", message: "Please check your username and password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "main" {
            if let nameText = name.text, let dest = segue.destination as? Home_page__ {
                dest.name = nameText
            }
        }
    }
}
