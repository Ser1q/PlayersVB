//
//  TableViewCell.swift
//  VolleyBallAPI
//
//  Created by Nuradil Serik on 14.09.2023.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {

    @IBOutlet weak var playerPos: UILabel!
    @IBOutlet weak var playerHeight: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(player: Players){
        
        playerPos.text = player.position
        playerName.text = player.name + " " + player.surname
        playerHeight.text = player.height
        playerImage.sd_setImage(with: URL(string: player.image))
        
    }
}
