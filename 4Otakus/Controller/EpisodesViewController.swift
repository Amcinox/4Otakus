//
//  EpisodesViewController.swift
//  4Otakus
//
//  Created by Simo Elbssir on 9/16/21.
//

import UIKit


class EpisodesViewController: UIViewController {

    var selectedAnime: Animes?
    @IBOutlet weak var animeName: UILabel!
    
    @IBOutlet weak var animePoster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animeName.text = selectedAnime?.name
        animePoster.image = UIImage(named: selectedAnime?.image ?? "")!
        title = selectedAnime?.name
       
    }
    
    
   
  
    
    
    var episodes = ["Episode 1","Episode 2","Episode 3","Episode 4","Episode 5","Episode 6"]
    
    
   
  
    
   
  
    
    

    





    
    
}
