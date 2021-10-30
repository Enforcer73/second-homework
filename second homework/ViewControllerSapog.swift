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

class ViewControllerSapog: UIViewController, ViewControllerCatEndDelegat {
    
    
        
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate : ViewControllerSapogDelegat?
    
    func textEndCat(text: String) {
        label.text = "Энд"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction func buttonBackSapog(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textSapog(text: "вернутся от Сапога")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSapogEndVC" {
            if let destVC = segue.destination as? ViewControllerCatEnd {
                destVC.text = "К сожалению моя фантазия сегодня малость иссякла... Но результат прогресса в обучении меня радует)"
                destVC.delegate = self
            }
        }
    }
}
