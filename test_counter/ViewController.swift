//
//  ViewController.swift
//  test_counter
//
//  Created by Alex Solod on 06.12.2021.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet var label: UILabel!
    var a = 0
   
    @IBAction func tap(_ sender: UIButton) {
        
         a = a+1
                    label.text = "\(a)"
                     if a > 4 {
                         a = 0
                         label.text = "\(a)"
                         let alert = UIAlertController  (title: "Warning", message:   "a > 5", preferredStyle: .alert)
                         let okButton = UIAlertAction (title: "OK", style: .default, handler: nil)
                         alert.addAction(okButton)
                         
                         present(alert, animated: true, completion: nil)
                         
                     }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
                
        label.text = "\(a)"
        
            
        }
        
}
