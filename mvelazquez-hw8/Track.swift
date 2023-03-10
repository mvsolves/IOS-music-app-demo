//
//  Track.swift
//  mvelazquez-hw8
//
//  Created by Marcos Velazquez on 2/24/23.
//

import Foundation
import UIKit

class Track {
    var title: String
    var artist: String
    var cover: UIImage
    var desc: String
    
    init(title: String, artist: String, cover: UIImage, desc: String) {
        self.title = title
        self.artist = artist
        self.cover = cover
        self.desc = desc
    }
}
