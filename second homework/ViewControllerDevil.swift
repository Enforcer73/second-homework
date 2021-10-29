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

class ViewControllerDevil: UIViewController {
    
    
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerDevilDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }

}
