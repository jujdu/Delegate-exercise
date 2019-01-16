//
//  InternViewController.swift
//  delegates
//
//  Created by Michael Sidoruk on 16/01/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class InternViewController: UIViewController {

    // MARK: - IBoutlets
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2

    }

    // MARK: - IBActions
    
    @IBAction func chooseSide(_ sender: UIButton) {
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: "BossVC") as! BossViewController
        destinationVC.delegate = self
        present(destinationVC, animated: true, completion: nil)
    }
}

extension InternViewController: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        logoImage.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
}
