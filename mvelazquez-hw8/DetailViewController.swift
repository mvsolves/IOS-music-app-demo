//
//  DetailViewController.swift
//  mvelazquez-hw8
//
//  Created by Marcos Velazquez on 2/22/23.
//

import UIKit

class DetailViewController: UIViewController {

    var trackTitle: String = "Unknown"
    var trackArtist: String = "Unkown"
    var trackImage: UIImage!
    var trackDesc: String = "Unkown"
    
    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var trackArtistLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackDescrView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.trackTitleLabel.text = self.trackTitle
        self.trackArtistLabel.text = self.trackArtist
        self.trackImageView.image = self.trackImage
        self.trackDescrView.text = self.trackDesc
    }
    
}
