//
//  ViewController.swift
//  mvelazquez-hw8
//
//  Created by Marcos Velazquez on 2/22/23.
//

import UIKit

var tracks: [Track] = []

class RootViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tracks = createArray()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}












func createArray() -> [Track] {
    var tempTracks: [Track] = []
    
    let track1 = Track(title: "Nea Skioni",
                       artist: "Joris Voorn",
                       cover: #imageLiteral(resourceName: "nea-skioni.jpeg"),
                       desc: "An beautiful track with a minimalistic approach to chord progressions. Only two chords are used in this track! The chord transition at 3:25 really moves an individual to another realm.")
    
    let track2 = Track(title: "In Yer Face",
                       artist: "808 State Bicep Remix",
                       cover: #imageLiteral(resourceName: "in-yer-face-bicep-remix.jpeg"),
                       desc: "Poweful yet full of breeze. This track gives space to the pleasant strings that play throughout the track. 808 State represents the clash between edm and house genre of music.")
    
    let track3 = Track(title: "Can You Feel It",
                       artist: "Mr. Fingers",
                       cover: #imageLiteral(resourceName: "can-you-feel-it.jpeg"),
                       desc: "Deep. Minimal. Chicago AF. This track is a deep representation of what true Chicago House music really is.")
    
    let track4 = Track(title: "Sisters and Brothers",
                       artist: "Sandra",
                       cover: #imageLiteral(resourceName: "sisters-and-brothers.jpeg"),
                       desc: "80's german vibes. A classic german track made by Sandra. This vibe brings an uplifting feeling while staying true to classic analog synthesis of the 80s. The intro is a great hook as it creates space for the listener.")
    
    let track5 = Track(title: "ROCKSTAR BIKERS & CHAINS",
                       artist: "Gunna",
                       cover: #imageLiteral(resourceName: "rockstar-gunna.jpeg" ),
                       desc: "Gunna's flow in this track brings in a fresh pump in energy when trying to accomplish something. This pairs quite well with working out.")
    
    let track6 = Track(title: "Michael Jordan",
                       artist: "Kendrick Lamar, Schoolboy Q",
                       cover: #imageLiteral(resourceName: "michael-jordan.jpeg"),
                       desc: "Kendrick moves a listener with his smooth flow and amazing backing track. This makes you feel pimped out while running some game downtown.")
    
    let track7 = Track(title: "Vamos a Bailar",
                       artist: "Innocentes MC, Ranking Stone",
                       cover: #imageLiteral(resourceName: "vamos-bailar.jpeg"),
                       desc: "A reggaeton type track, The Innocentes (maybe not that innocent) delivers a unique track within the Puerto Rican community.")
    
    let track8 = Track(title: "Enjoy the Silence",
                       artist: "Depeche Mode",
                       cover: #imageLiteral(resourceName: "enjoy-the-silence.jpeg"),
                       desc: "Peak synthesizer 80's mode. A moving track that makes you feel a sense of hope in a future unimaginable.")
    
    let track9 = Track(title: "Lava Lamp",
                       artist: "Thundercat",
                       cover: #imageLiteral(resourceName: "lava-lamp.jpeg"),
                       desc: "Calming, free, and open. This track puts you in a mellow headspace, hipster style.")
   
    let track10 = Track(title: "The Captain",
                       artist: "HIJCKD",
                       cover: #imageLiteral(resourceName: "the-captain.jpeg"),
                       desc: "Here is a track that clearly defines what deep techno is. Minimal in its sound choices, this track makes you pumped to get what you need to get done.")
    
    let track11 = Track(title: "Turn The Tide",
                       artist: "Johnny Hates Jazz",
                       cover: #imageLiteral(resourceName: "turn-the-tide.jpeg"),
                       desc: "I picture 80's mall vibe. 6-7pm chill, retro vibe. Johnny really hates jazz.")
    
    let track12 = Track(title: "U-Digg",
                       artist: "Lil Baby, 42 Dugg, Veeze",
                       cover: #imageLiteral(resourceName: "u-digg.jpeg"),
                       desc: "The first 1:30 minute is good. After that, rest is aightttt.")
    
    let track13 = Track(title: "Perdoname",
                       artist: "Raymix",
                       cover: #imageLiteral(resourceName: "raymix.jpeg"),
                       desc: "The amount this track breathes fresh air into cumbia music and electronic synths is refreshing. The combination of both sides modernizes what cumbia can really be pushed to.")
    
    tempTracks.append(track1)
    tempTracks.append(track2)
    tempTracks.append(track3)
    tempTracks.append(track4)
    tempTracks.append(track5)
    tempTracks.append(track6)
    tempTracks.append(track7)
    tempTracks.append(track8)
    tempTracks.append(track9)
    tempTracks.append(track10)
    tempTracks.append(track11)
    tempTracks.append(track12)
    tempTracks.append(track13)
    
    return tempTracks
}















extension RootViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let track = tracks[indexPath.row]
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TrackCell") as! TrackCell
        
        cell.setTrack(track: track)
        return cell
    }

    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "PushToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detail = segue.destination as? DetailViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let track = tracks[indexPath.row]
                detail.trackTitle = track.title
                detail.trackArtist = track.artist
                detail.trackImage = track.cover
                detail.trackDesc = track.desc
            }
        }
    }
}
