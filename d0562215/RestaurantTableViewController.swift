//
//  RestaurantTableViewController.swift
//  D0515119
//
//  Created by A-Lye on 3/27/17.
//  Copyright © 2017 FCU. All rights reserved.
//
import UIKit

class RestaurantTableViewController: UITableViewController {
    
    /*var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
     var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
     var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
     var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]*/
    
    var restaurants:[Restaurant] = [Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location:"G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", image:"cafedeadend.jpg", isVisited: false),
                                    Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phone: "348-233423", image:"homei.jpg", isVisited: false),
                                    Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 TaiPing Shan Road SOHO, Sheung Wan, Hong Kong", phone: "354-243523", image:"teakha.jpg", isVisited: false),
                                    Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink",location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone:"453-333423", image: "cafeloisl.jpg", isVisited: false),
                                    Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phone: "983-284334", image:"petiteoyster.jpg", isVisited: false),
                                    Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "ShopJ-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phone: "232-434222",image: "forkeerestaurant.jpg", isVisited:false),
                                    Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phone: "234-834322", image:"posatelier.jpg", isVisited: false),
                                    Restaurant(name: "Bourke Street Backery", type: "Chocolate", location:"633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343",image: "bourkestreetbakery.jpg", isVisited: false),
                                    Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", phone: "734-232323", image:"haighschocolate.jpg", isVisited: false),
                                    Restaurant(name: "Palomino Espresso", type: "American / Seafood",location: "Shop 1 61 York St Sydney New South Wales", phone: "872-734343", image:"palominoespresso.jpg", isVisited: false),
                                    Restaurant(name: "Upstate", type: "American", location: "95 1st Ave NewYork, NY 10003", phone: "343-233221", image: "upstate.jpg", isVisited: false),
                                    Restaurant(name: "Traif", type: "American", location: "229 S 4th StBrooklyn, NY 11211", phone: "985-723623", image: "traif.jpg", isVisited: false),
                                    Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch",location: "445 Graham Ave Brooklyn, NY 11211", phone:"455-232345",image:"grahamavenuemeats.jpg", isVisited: false),
                                    Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413Graham Ave Brooklyn, NY 11211", phone: "434-232322", image: "wafflewolf.jpg",isVisited: false),
                                    Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", image: "fiveleaves.jpg",isVisited: false),
                                    Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", image: "cafelore.jpg",isVisited: false),
                                    Restaurant(name: "Confessional", type: "Spanish", location: "308 E6th St New York, NY 10003", phone: "643-332323", image: "confessional.jpg",isVisited: false),
                                    Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", image:"barrafina.jpg", isVisited: false),
                                    Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", image:"donostia.jpg", isVisited: false),
                                    Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", image: "royaloak.jpg", isVisited: false),
                                    Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", image: "caskpubkitchen.jpg", isVisited: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //    override var prefersStatusBarHidden: Bool {
    //        return true
    //    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
        cell.nameLabel?.text = restaurants[indexPath.row].name
        cell.thumbnailImageView?.image = UIImage(named: restaurants[indexPath.row].image)
        cell.typeLabel?.text = restaurants[indexPath.row].type
        cell.locationLabel?.text = restaurants[indexPath.row].location
        cell.accessoryType = restaurants[indexPath.row].isVisited ? .checkmark : .none
        cell.thumbnailImageView.layer.cornerRadius = 30
        cell.thumbnailImageView.clipsToBounds = true
        
        
        // Configure the cell...
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Share", handler: {(action,indexPath) -> Void in
            
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image)
            {
                let activityController = UIActivityViewController(activityItems: [defaultText,imageToShare], applicationActivities: nil)
                self.present(activityController,animated:true,completion:nil)
            }
        })
        
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete", handler: {(action,indexPath) -> Void in
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
        })
        shareAction.backgroundColor = UIColor(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        deleteAction.backgroundColor = UIColor(red: 202/255, green: 202/255, blue: 203/255, alpha: 1)
        return [deleteAction,shareAction]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail" {
            let controller = segue.destination as! RestaurantDetailViewController
            if let indexPath = tableView.indexPathForSelectedRow{
                controller.restaurant = restaurants[indexPath.row]
            }
        }
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
