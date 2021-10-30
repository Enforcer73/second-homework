//
//  ViewControllerMimi.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerMimiDelegat: AnyObject {
    func textMimi(text: String)
}

class ViewControllerMimi: UIViewController, ViewControllerSutulDelegat {
    
  
    @IBOutlet private weak var label: UILabel!
    
    func textSutul(text: String) {
        label.text = ""
    }
    
    var text = ""
    weak var delegate : ViewControllerMimiDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction private func buttonMimiBack(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textMimi(text: "Go продолжим")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goMimiSutul" {
            if let destVc = segue.destination as? ViewControllerSutul {
                destVc.text = "...а вот и не ждан?! Воистину...мир полон сюрпризов"
                destVc.delegate = self
            }
        }
    }
}

