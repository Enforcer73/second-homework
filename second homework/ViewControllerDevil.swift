//
//  ViewControllerDevil.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerDevilDelegat: AnyObject {
    func textDevil(text: String)
}

class ViewControllerDevil: UIViewController, ViewControllerCatEndDelegat {
    
    
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerDevilDelegat?
    
    
    func textEndCat(text: String) {
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }

    @IBAction func backDevInCat(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textDevil(text: "я вернулся из cтрашного сна")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEndCatVC" {
            if let destVC = segue.destination as? ViewControllerCatEnd {
                destVC.text = "...ну а ты чего ожидал??? думал тут пантера в чёрном \"панамера\"?)))"
                destVC.delegate = self
            }
        }
    }  
}
