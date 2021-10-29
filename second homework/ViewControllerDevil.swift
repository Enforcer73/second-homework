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

class ViewControllerDevil: UIViewController, ViewControllerDevilDelegat, ViewControllerCatEndDelegat {
    
    
    @IBOutlet private weak var label: UILabel!
    
    func textDevil(text: String) {
        label.text = "dev hi \(text)"
    }
    
    func textEndCat(text: String) {
        label.text = "жлаешь поискать лучшего результат? \(text)"
    }
    
    var text = ""
    weak var delegate: ViewControllerDevilDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }

    @IBAction func backDevInCat(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textDevil(text: "я вернулся в cтрашном сне")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEndCatVC" {
            if let destVC = segue.destination as? ViewControllerCatEnd {
                destVC.text = "...ну а ты чего ожидал??? думал тут пантера?)))"
                destVC.delegate = self
            }
        }
    }
    
    
    
    
}
