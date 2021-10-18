//
//  GameViewController.swift
//  snake_lesson8
//
//  Created by Максим on 21.09.2021.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        
        let skView = view! as! SKView
        skView.showsFPS = true
        
        skView.showsNodeCount = true
        scene.scaleMode
        
    }
}
