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
    
    class func PyramidNode() -> SCNNode {
        let pyramid = SCNPyramid(width: 10.0, height: 20.0, length: 10.0)
        let pyramidNode = SCNNode(geometry: pyramid)
        pyramidNode.name = "pyramid"
        
        let position = SCNVector3Make(30, 0, -40)
        pyramidNode.position = position
        pyramidNode.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        pyramidNode.geometry?.firstMaterial?.shininess = 1.0
        
        return pyramidNode
    }
}
