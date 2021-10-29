//
//  ViewControllerSapog.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerSapogDelegat: AnyObject {
    func textSapog(text: String)
}

class ViewControllerSapog: UIViewController, ViewControllerSapogDelegat {
        
    @IBOutlet private weak var label: UILabel!
    
    func textSapog(text: String) {
        label.text = "Сапог \(text)"
    }
    
    var text = ""
    weak var delegate : ViewControllerSapogDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction func buttonBackSapog(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textSapog(text: " вернутся от Сапога")
    }
    
}
