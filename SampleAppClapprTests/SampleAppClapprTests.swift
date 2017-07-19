//
//  SampleAppClapprTests.swift
//  SampleAppClapprTests
//
//  Created by Paulo Gama on 18/07/17.
//  Copyright © 2017 Paulo Gama. All rights reserved.
//

import XCTest
@testable import SampleAppClappr
@testable import Clappr

class SampleAppClapprTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        
    }
    
    override func tearDown() {
        
        
        super.tearDown()
    }
    
    func testHomeViewControllerSubviews() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        let tableView = homeViewController.view.subviews.filter{$0 is UITableView}
        let playerView = homeViewController.playerView.subviews.filter{$0 is Clappr.Core}
        
        XCTAssertEqual(tableView.count, 1)
        XCTAssertEqual(playerView.count, 1)
    }
}
