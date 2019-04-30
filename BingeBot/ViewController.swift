//
//  ViewController.swift
//  BingeBot
//
//  Created by anna.sibirtseva on 30/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingeBotSkopenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }

    @IBAction func addShowButtonWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text  else { return }
        if showName != "" {
            showsStackView.isHidden = false
            shows.append(showName)
            updateShowsLabel()
            addShowTextField.text = ""
            if shows.count > 1 {
                randomShowStackView.isHidden = false
                bingeBotSkopenLabel.isHidden = true
                randomShowLabel.isHidden = true
            }
        }
    }
    
    @IBAction func whatToBingeButton(_ sender: Any) {
       randomShowLabel.text = shows.randomElement()
        bingeBotSkopenLabel.isHidden = false
        randomShowLabel.isHidden = false
    }
    
    
}


