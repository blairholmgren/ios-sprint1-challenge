//
//  MovieViewController.swift
//  iOS-Sprint-Challenge
//
//  Created by Blair Holmgren on 4/26/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieControllerProtocol {

    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addMovieTapped(_ sender: Any) {
    
        guard let name = nameTextField.text, !name.isEmpty
            
        else { return }
        
        movieController?.createMovie(with: name)
        
        nameTextField.text = ""
    }
    

    @IBOutlet var nameTextField: UITextField!
 
}
