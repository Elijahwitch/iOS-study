//
//  ViewController.swift
//  HelloWorld
//
//  Created by Joon Ho Gwak on 3/13/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var IBlHello: UILabel!

    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSend(_ sender: UIButton) {
        IBlHello.text = "Hello, " + txtName.text!
    }


}

