//
//  TrackCell.swift
//  mvelazquez-hw8
//
//  Created by Marcos Velazquez on 2/24/23.
//

import UIKit

class TrackCell: UITableViewCell {
    
    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var trackArtistLabel: UILabel!
    @IBOutlet weak var trackImage: UIImageView!

    func setTrack (track: Track) {
        trackTitleLabel.text = track.title
        trackArtistLabel.text = track.artist
        trackImage.image = track.cover
    }
}
