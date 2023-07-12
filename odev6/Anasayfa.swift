//
//  ViewController.swift
//  odev6
//
//  Created by MacbookPro on 19.08.2022.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        searchBar.searchTextField.layer.cornerRadius = 20
        searchBar.searchTextField.layer.masksToBounds = true
        if let AramaBar = self.searchBar.value(forKey: "searchField") as? UITextField,
               let BuyutecIcon = AramaBar.leftView as? UIImageView {
                   BuyutecIcon.image = BuyutecIcon.image?.withRenderingMode(.alwaysTemplate)
                   BuyutecIcon.tintColor = .systemGreen
               }
        
    }


    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        itemAppearance.selected.iconColor = UIColor.systemGreen
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemGreen]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemGreen
    }

}

