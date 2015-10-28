//
//  MusicListTableViewCell.swift
//  SwiftMusicDemo
//
//  Created by huchunyuan on 15/10/26.
//  Copyright © 2015年 LafreeTream. All rights reserved.
//

import UIKit

class MusicListTableViewCell: UITableViewCell {

    @IBOutlet weak var musicImage: UIImageView!
    
    @IBOutlet weak var musicName: UILabel!
    
    @IBOutlet weak var singerName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setModel(model:MusicModel) ->Void{
        self.musicName.text = model.name
        self.singerName.text = model.singer
        self.musicImage.sd_setImageWithURL(NSURL(string: model.picUrl))
        
        
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      
        
        // Configure the view for the selected state
    }

}
