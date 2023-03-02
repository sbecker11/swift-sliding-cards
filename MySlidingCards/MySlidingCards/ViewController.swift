//
//  ViewController.swift
//  MySlidingCards
//
//  Created by Shawn C Becker on 3/1/23.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}


class ViewController: UIViewController, CardSliderDataSource {

    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(
            image: UIImage(named: "Robin")!,
            rating: nil,
            title: "Bookmarks",
            subtitle: "Get excited about bookmarks",
            description: "You can add bookmarks in the app now"))
        
        data.append(Item(
            image: UIImage(named: "Shawn")!,
            rating: nil,
            title: "Bookmarks",
            subtitle: "Get excited about bookmarks",
            description: "You can add bookmarks in the app now"))
        
        data.append(Item(
            image: UIImage(named: "Sloane")!,
            rating: nil,
            title: "Bookmarks",
            subtitle: "Get excited about bookmarks",
            description: "You can add bookmarks in the app now"))
        
        myButton.backgroundColor = UIColor(red:0.80, green:0.5, blue:0.9, alpha:1.0)
        myButton.titleLabel?.textColor = UIColor(red:0.20, green:0.9, blue:0.1, alpha:1.0)
        // myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }

    @IBAction func didTapButton() {
        // Present the card slider
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    func item(for index: Int) -> CardSlider.CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }

}


