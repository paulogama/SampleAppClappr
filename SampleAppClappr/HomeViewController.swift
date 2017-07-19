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
    @IBOutlet weak var playerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let options = [kSourceUrl: "http://clappr.io/highline.mp4"]
        let player = Player(options: options)
        
        player.attachTo(playerView, controller: self)

        player.play()
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Identifier", for: indexPath)
        
        cell.textLabel?.text = "Teste"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}
