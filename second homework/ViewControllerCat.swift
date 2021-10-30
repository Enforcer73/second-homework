//
//  ViewControllerCat.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerCatDelegat: AnyObject {
    func textCat(text: String)
}

class ViewControllerCat: UIViewController, ViewControllerDevilDelegat, ViewControllerCatEndDelegat, ViewControllerSapogDelegat {
    
  
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerCatDelegat?
    
    
    func textSapog(text: String) {
        label.text = "Упс...но я смог \(text)"
    }
    
    func textDevil(text: String) {
        label.text = "И снова здавствуйте...\(text)"
    }
    
    func textEndCat(text: String) {
        label.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDevVC" {
            if let destVC = segue.destination as? ViewControllerDevil {
                destVC.text = "...этот кошак ЧОРД! Я бы одумался..."
                destVC.delegate = self
            }
        }
        
        if segue.identifier == "goToSapogVC" {
            if let destVC = segue.destination as? ViewControllerSapog {
                destVC.text = "Слезами выбор не изменить! Так что решайся \"Продолжить\" или \"Передумал\" ?"
                destVC.delegate = self
            }
        }
    }
}

