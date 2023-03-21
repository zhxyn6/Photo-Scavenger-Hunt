//
//  TaskCell.swift
//  Photo-Scavenger-Hunt
//
//  Created by Yujun Zhao on 3/20/23.
//

import UIKit

class HuntCell: UITableViewCell {
    @IBOutlet weak var completedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with hunt: Hunt) {
        titleLabel.text = hunt.title
        titleLabel.textColor = hunt.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: hunt.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = hunt.isComplete ? .systemBlue : .tertiaryLabel
    }

}
