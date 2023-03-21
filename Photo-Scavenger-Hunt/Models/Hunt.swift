//
//  Hunt.swift
//  Photo-Scavenger-Hunt
//
//  Created by Yujun Zhao on 3/20/23.
//

import UIKit
import CoreLocation

class Hunt {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Hunt {
    static var mockedHunts: [Hunt] {
        return [
            Hunt(title: "Check in at a bookstore 📚",
                 description: "Take a picture of yourself holding a book you're interested in purchasing."),
            Hunt(title: "Check in at a gym 🏃🏻‍♀️",
                 description: "Take a picture of yourself on a piece of gym equipment or lifting weights."),
            Hunt(title: "Check in at a coffee shop ☕️",
                 description: "Take a picture of yourself holding a coffee cup inside the shop."),
            Hunt(title: "Check in at a park 🏞️",
                 description: "Take a picture of yourself sitting on a bench or with a scenic view in the background."),
            Hunt(title: "Check in at a museum 🏛️",
                 description: "Take a picture of yourself standing next to a prominent exhibit or artwork.")
            
        ]
    }
}

