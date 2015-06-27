//
//  PlayerDetailsViewControllerTableViewController.swift
//  Ratings
//
//  Created by Gelsy Cejudo Valencia on 26/06/15.
//  Copyright (c) 2015 Gelsy Cejudo Valencia. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    var player:Player!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    var game:String = "Chess"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        detailLabel.text = game
    }
    
    required init(coder aDecoder: NSCoder) {
        println("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        println("deinit PlayerDetailsViewController")
    }
    
    @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func savePlayerDetail(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func selectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
                detailLabel.text = selectedGame
                game = selectedGame
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
