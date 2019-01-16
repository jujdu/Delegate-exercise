//
//  BossViewController.swift
//  delegates
//
//  Created by Michael Sidoruk on 16/01/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate: class {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class BossViewController: UIViewController {
    
    weak var delegate: SideSelectionDelegate!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    

    @IBAction func imperialButton(_ sender: UIButton) {
        guard let image = UIImage(named: "vader") else { return }
        delegate.didTapChoice(image: image, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButton(_ sender: Any) {
        guard let image = UIImage(named: "luke") else { return }
        delegate.didTapChoice(image: image, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
}
