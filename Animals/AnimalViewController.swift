//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var name: UILabel!
    
    var animal : String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        name.text = animal
        if let animal = animal {
            emoji.text = animalToEmoji(animal: animal)
            navigationItem.title = animal
        }
    }
    
    func animalToEmoji(animal: String) -> String {
        switch animal {
        case "Dog": return "🐶"
        case "Cat": return " 🐱"
        case "Mouse": return "🐭"
        case "Hamster": return "🐹"
        case "Bunny": return "🐰"
        case "Panda": return "🐼"
        case "Lion": return "🦁"
        case "Pig": return "🐷"
        case "Frog": return "🐸"
        case "Octopus": return "🐙"
        default: return "Oops, what went wrong?"
        }
    }
}
