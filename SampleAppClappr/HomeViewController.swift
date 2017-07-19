//
//  HomeViewController.swift
//  SampleAppClappr
//
//  Created by Paulo Gama on 18/07/17.
//  Copyright © 2017 Paulo Gama. All rights reserved.
//

import UIKit
import Clappr

class HomeViewController: UIViewController {

    @IBOutlet weak var videosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let options = [kSourceUrl: "http://clappr.io/highline.mp4"]
        let player = Player(options: options)
//
        player.attachTo(self.view, controller: self)
//        
//        player.play()
//        
//        player.on(Event.playing) { userInfo in
//            print("on Play")
//        }
        
    }

}

//extension HomeViewController {
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier:"Identifier") as UITableViewCell!
//        
//        cell.textLabel?.text = "Teste"
//        
//        return cell
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//}
