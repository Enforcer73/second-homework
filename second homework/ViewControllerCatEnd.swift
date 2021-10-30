//
//  ViewControllerCatEnd.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerCatEndDelegat: AnyObject {
    func textEndCat(text: String)
}

class ViewControllerCatEnd: UIViewController, ViewControllerDevilDelegat, ViewControllerSapogDelegat, ViewControllerCatDelegat {
    
    
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerCatEndDelegat?
    
    
    func textDevil(text: String) {
        label.text = ""
    }
    
    func textSapog(text: String) {
        label.text = ""
    }
    
    func textCat(text: String) {
        label.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction private func backToRootCat(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goCatRootVC" {
            if let destVC = segue.destination as? ViewControllerCat {
                destVC.text = "Смог вернуть данные из CatEndVC только так...🐒"
                destVC.delegate = self
            }
        }
    }
}
