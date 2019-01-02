//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Calvin Cantin on 18-10-09.
//  Copyright © 2018 Calvin Cantin. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals:[Meal]
    {
        
        var breakfast:Meal = Meal(name:"Bol de céréal",foods:[Food(name:"Céréal",description: "Céréal cultiver sur terre"),
                                                       Food(name: "Fraise sec", description: "Fraise sécher pour être conservé"),
                                                       Food(name: "Framboise sec", description: "Framboise sécher")])
        var lunch:Meal = Meal(name: "Sandwitch", foods:[Food(name: "Tranche de pain", description: "Pain couper en tranche"),
                                                         Food(name: "Laitue", description: "Cultivé sur terre"),
                                                         Food(name: "Jambon", description: "Avant s'était un cochon")])
        var dinner:Meal = Meal(name: "Riz avec du poulet", foods: [Food(name:"Riz", description: "Franchement je saia pas si sa vient des pays asiatiques"),
                                                                   Food(name: "Poulet", description: "Divin(comme moi)"),
                                                                   Food(name: "Carrot", description: "C'est bien les légumes")])
        return [breakfast,lunch,dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].foods.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath)

        cell.textLabel?.text = meals[indexPath.section].foods[indexPath.row].name
        cell.detailTextLabel?.text = meals[indexPath.section].foods[indexPath.row].description

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    
}
