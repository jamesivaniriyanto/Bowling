//
//  ViewController.swift
//  Bowling
//
//  Created by James Ivan Iriyanto on 18/07/19.
//  Copyright © 2019 James Ivan Iriyanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
        GifView.loadGif(name: "IniGif")
    }
    
    
    func createArray() -> [Video] {
        
        let video1 = Video(image: #imageLiteral(resourceName: "01"), title: "01")
        let video2 = Video(image: #imageLiteral(resourceName: "persnickety-prints-rrHl2zGZ9E4-unsplash"), title: "02")
    
        
        return [video1, video2]
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}

