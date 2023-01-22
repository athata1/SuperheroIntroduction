//
//  ViewController.swift
//  SuperHero
//
//  Created by Akhil Thata on 1/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var superHeroImage: UIImageView!
    
    let backstory:Information = Information(title: "Backstory", image: UIImage(named: "lab")!, information: "Barry Allen was in his lab when a particle accelerator exploded, causing him to be able to run at inhumane speeds.");
    
    let weakness:Information = Information(title:"Weakness", image: UIImage(named: "coldgun")!, information: "His weakness is the cold gun used by Captian Cold, which can slow the Flash's particles down, which inhibit his speed and can potentially kill him.");
    
    let strength:Information = Information(title: "Strength" ,image: UIImage(named: "strength")!, information: "The flash can pull up to 600 tons while he is in the speed force across significantly large distances.");
    
    var allInformation:[Information] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allInformation = [backstory, weakness, strength];
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "informationSegue",
            let tappedView = sender as? UIButton,
            let detailViewController = segue.destination as? InformationViewController {

            if tappedView.tag == 0 {
                detailViewController.info = allInformation[0]
            } else if tappedView.tag == 1 {
                detailViewController.info = allInformation[1]
            } else if tappedView.tag == 2 {
                detailViewController.info = allInformation[2]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }

    @IBAction func onButtonClick(_ sender: UIButton) {
        
        performSegue(withIdentifier: "informationSegue", sender: sender)
    }
    
    
    
}

