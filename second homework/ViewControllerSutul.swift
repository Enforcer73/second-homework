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

class ViewControllerSutul: UIViewController, ViewControllerDogEndDelegat, ViewControllerSutulDelegat {
    
    

    @IBOutlet private weak var label: UILabel!
    
    func textSutul(text: String) {
        label.text = "\(text)куда пошёл?!"
    }
    
    func textEndDog(text: String) {
        label.text = "Ну как то так \(text)"
    }
    
    var text = ""
    weak var delegate : ViewControllerSutulDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
    }
    
    @IBAction func buttonSutulBack(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        delegate?.textSutul(text: "и дал свободу выбора ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEndVC" {
            if let destVc = segue.destination as? ViewControllerDogEnd {
                destVc.text = "это наш вид, что мы заслуживаем..."
                destVc.delegate = self
            }
        }
    }
}

