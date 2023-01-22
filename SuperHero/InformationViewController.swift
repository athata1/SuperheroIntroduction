//
//  InformationViewController.swift
//  SuperHero
//
//  Created by Akhil Thata on 1/22/23.
//

import UIKit

class InformationViewController: UIViewController {
        
    var info:Information?;
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var infoText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let info = info {
            self.title = info.title;
            infoImage.image = info.image;
            infoText.text = info.information;
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
