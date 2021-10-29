//
//  ViewControllerCat.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

class ViewControllerCat: UIViewController, ViewControllerDevilDelegat {
    
  
    @IBOutlet weak var label: UILabel!
    
    func textDevil(text: String) {
        label.text = ("И снова здавствуйте... \(text)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDevVC" {
            if let destVC = segue.destination as? ViewControllerDevil {
                destVC.text = "...это ЧОРД"
                destVC.self
            }
        }
    }

}

