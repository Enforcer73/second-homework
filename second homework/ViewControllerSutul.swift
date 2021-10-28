//
//  ViewControllerSutul.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerSutulDelegat: AnyObject {
    func textSutul(text: String)
}

class ViewControllerSutul: UIViewController {
    

    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate : ViewControllerSutul?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonSutulBack(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textSutul(text: "и дал свободу выбора ")
    }
    

}

