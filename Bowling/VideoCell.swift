//
//  VideoCell.swift
//  Bowling
//
//  Created by James Ivan Iriyanto on 18/07/19.
//  Copyright © 2019 James Ivan Iriyanto. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }

}
