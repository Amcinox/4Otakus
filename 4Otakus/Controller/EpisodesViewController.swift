//
//  EpisodesViewController.swift
//  4Otakus
//
//  Created by Simo Elbssir on 9/16/21.
//

import UIKit


class EpisodesViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
 
    
 
    var episodes = ["Episode 1","Episode 2","Episode 3","Episode 4","Episode 5","Episode 6"]
    var selectedAnime: Animes?
    @IBOutlet weak var animeName: UILabel!
    
    @IBOutlet weak var animePoster: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animeName.text = selectedAnime?.name
        animePoster.image = UIImage(named: selectedAnime?.image ?? "")!
        title = selectedAnime?.name
    }
    
    
   
    
    
    
   
    

   
  
    
   
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "episodesCell", for: indexPath) as! EpisodesCell
        cell.episodeNumber.text = "الحلقة رقم : \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerText = UILabel()
        headerText.text = " الحلقات "
        headerText.textColor = .white
        headerText.textAlignment = .right
        headerText.backgroundColor = .gray
        return headerText
        
    }
    

 



    
    
    
    
}
