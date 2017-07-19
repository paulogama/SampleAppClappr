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

//    func testHomeViewControllerInheritance() {
//        let homeViewController = HomeViewController()
//        XCTAssertTrue(((homeViewController as? UITableViewController) != nil))
//    }
    
    func testHomeViewControllerSubviews() {
        let homeViewController = HomeViewController()
//        XCTAssertTrue(homeViewController.view.subviews[0] as? UITableView != nil)
        XCTAssertTrue(homeViewController.view.subviews[0] as? Clappr.Core != nil)
    }
    
}
