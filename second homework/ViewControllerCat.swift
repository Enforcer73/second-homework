//
//  ViewControllerCat.swift
//  second homework
//
//  Created by Ruslan Bagautdinov on 28.10.2021.
//

import UIKit

protocol ViewControllerCatDelegat: AnyObject {
    func textCat(text: String)
}

class ViewControllerCat: UIViewController, ViewControllerDevilDelegat, ViewControllerCatEndDelegat, ViewControllerSapogDelegat {
    
  
    @IBOutlet private weak var label: UILabel!
    
    var text = ""
    weak var delegate: ViewControllerCatDelegat?
    
    
    func textSapog(text: String) {
        label.text = "Упс...но я смог \(text)"
    }
    
    func textDevil(text: String) {
        label.text = "И снова здавствуйте...\(text)"
    }
    
    func textEndCat(text: String) {
        label.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
        createObservers()
    }
    
    func createObservers() {
        let name = NSNotification.Name("Final Root")
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: name, object: nil)
    }

    @objc func onDidReceiveData(_ notification: Notification) {
        if let data = notification.userInfo as? [String: String] {
            let value = data["root"]
            label.text = value
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDevVC" {
            if let destVC = segue.destination as? ViewControllerDevil {
                destVC.text = "...этот кошак ЧОРД! Я бы одумался..."
                destVC.delegate = self
            }
        }
        
        if segue.identifier == "goToSapogVC" {
            if let destVC = segue.destination as? ViewControllerSapog {
                destVC.text = "Слезами выбор не изменить! Так что решайся \"Продолжить\" или \"Передумал\" ?"
                destVC.delegate = self
            }
        }
    }
}

