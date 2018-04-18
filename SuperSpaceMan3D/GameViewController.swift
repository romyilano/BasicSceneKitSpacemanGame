//
//  GameViewController.swift
//  SuperSpaceMan3D
//
//  Created by Romy Ilano on 4/17/18.
//  Copyright © 2018 Romy Ilano. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainScene = createMainScene()
        let sceneView = self.view as! SCNView
        sceneView.scene = mainScene
        
        sceneView.showsStatistics = true
        sceneView.allowsCameraControl = true
        
        mainScene.rootNode.addChildNode(createFloorNode())
        mainScene.rootNode.addChildNode(Obstacles.PyramidNode())
        mainScene.rootNode.addChildNode(createStartingText())
        sceneView.allowsCameraControl = true
    }
    
    func createMainScene() -> SCNScene {
        let mainScene = SCNScene(named: "art.scnassets/hero.dae")
        return mainScene!
    }
    
    func createFloorNode() -> SCNNode {
        let floorNode = SCNNode()
        let floor = SCNFloor()
        floorNode.geometry = floor
        floorNode.geometry?.firstMaterial?.diffuse.contents = "floor"
        return floorNode
    }
    
    // MARK: - Text
    func createStartingText() -> SCNNode {
        let startText = SCNText(string: "Start!", extrusionDepth: 5)
        startText.chamferRadius = 0.5
        startText.flatness = 0.3
        startText.font = UIFont(name: "Copperplate", size: 30)
        startText.firstMaterial?.specular.contents = UIColor.blue
        startText.firstMaterial?.shininess = 0.4
        
        let textNode = SCNNode(geometry: startText)
        textNode.scale = SCNVector3Make(0.75, 0.75, 0.75)
        textNode.position = SCNVector3Make(200, 0, 1000)
        return textNode
    }
}
