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
        label.text = "Упс...\nно я смог \(text)"
    }
    
    func textDevil(text: String) {
        label.text = "И снова здавствуйте...\n \(text)"
    }
    
    func textEndCat(text: String) {
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDevVC" {
            if let destVC = segue.destination as? ViewControllerDevil {
                destVC.text = "...этот кошак ЧОРД!\nЯ бы одумался..."
                destVC.delegate = self
            }
        }
        
        if segue.identifier == "goToSapogVC" {
            if let destVC = segue.destination as? ViewControllerSapog {
                destVC.text = "Слезами выбор не изменить!\nТак что решайся \"Продолжить\"\nили\n\"Передумал\" ?"
                destVC.delegate = self
            }
        }
    }

}

