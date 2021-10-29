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

class ViewControllerCatEnd: UIViewController, ViewControllerDevilDelegat, ViewControllerCatEndDelegat, ViewControllerSapogDelegat {
    
    
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerCatEndDelegat?
    
    func textDevil(text: String) {
        label.text = ""
    }
    func textEndCat(text: String) {
        label.text = ""
    }
    
    func textSapog(text: String) {
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction private func backToRootCat(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
