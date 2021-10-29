//
//  ViewControllerCat.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

class ViewControllerCat: UIViewController, ViewControllerDevilDelegat, ViewControllerCatEndDelegat, ViewControllerSapogDelegat {
    
  
    @IBOutlet private weak var label: UILabel!
    
    func textSapog(text: String) {
        label.text = "Сорян...но я смог \(text)"
    }
    
    func textDevil(text: String) {
        label.text = "И снова здавствуйте... \(text)"
    }
    
    func textEndCat(text: String) {
        label.text = "Оо! Хабар из джайла... \(text)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDevVC" {
            if let destVC = segue.destination as? ViewControllerDevil {
                destVC.text = "...это ЧОРД"
                destVC.delegate = self
            }
        }
        
        if segue.identifier == "goToSapogVC" {
            if let destVC = segue.destination as? ViewControllerSapog {
                destVC.text = "придётся как то избежать слёз..."
                destVC.delegate = self
            }
        }
    }

}

