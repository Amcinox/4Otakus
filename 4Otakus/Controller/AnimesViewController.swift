//
//  AnimesViewController.swift
//  4Otakus
//
//  Created by Simo Elbssir on 9/16/21.
//

import UIKit

class AnimesViewController: UITableViewController {
    
    
    var animes = Array<Animes>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "AnimeCell", bundle: nil), forCellReuseIdentifier: "animeCell")
        
       
        
        
        animes.append(Animes(name: "One Piece", image: "one_piece"))
        animes.append(Animes(name: "Black Clover", image: "black_clover"))
        animes.append(Animes(name: "Bleach", image: "bleach"))
        animes.append(Animes(name: "Death Note", image: "death-note"))
        animes.append(Animes(name: "Hunter x Hunter", image: "hxh"))
        animes.append(Animes(name: "Jujutsu Kaisen", image: "jujutsu_kaisen"))
        animes.append(Animes(name: "Kimetsu No Yaiba", image: "kimetsu_no_yaiba"))
        animes.append(Animes(name: "Naruto Shippuden", image: "naruto_shippuden"))
        animes.append(Animes(name: "Naruto", image: "naruto"))
        animes.append(Animes(name: "Shingeki No Kyojin", image: "shingeki_no_kyojin"))
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animeCell", for: indexPath) as! AnimeCell
        cell.animeTitle.text = animes[indexPath.row].name
        cell.animePoster.image = UIImage(named: animes[indexPath.row].image)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(animes[indexPath.row].name)
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
