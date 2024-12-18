//
//  ViewController.swift
//  veriSaklama
//
//  Created by Musa on 18.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldBirthDay: UITextField!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelBirthDay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "BirthDay")
        
        // Casting - as? vs. as! force casting
        
        if let newName = storedName as? String {
            labelName.text = "Name : \(newName)"
        }
        if let newBirthDay = storedBirthDay as? String {
            labelBirthDay.text = "BirthDay : " + newBirthDay
            
        }
        
  
    }

    @IBAction func saveButton(_ sender: Any) {
        
        
        UserDefaults.standard.set(textFieldName.text!, forKey: "name")
        UserDefaults.standard.set(textFieldBirthDay.text!, forKey: "BirthDay")
        
        labelName.text = "Name : \(textFieldName.text!)"
        labelBirthDay.text = "BirthDay : " + textFieldBirthDay.text!
    }
    
}

