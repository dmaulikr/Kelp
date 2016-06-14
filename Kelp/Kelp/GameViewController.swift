
//  Created by Devine Lu Linvega
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit

var sceneView:SCNView!
var scene = SCNScene()
var touchOrigin = CGPoint()
var touchPosition = CGPoint()

let console = Console()
let game    = Game()
let camera  = Camera()
let ui      = UI()
let world   = World()
let player  = Player()

// Colors

let black = UIColor(white: 0, alpha: 1)
let grey  = UIColor(white: 0.5, alpha: 1)
let red   = UIColor.redColor()
let cyan  = UIColor(red: 0.44, green: 0.87, blue: 0.76, alpha: 1)
let white = UIColor(white: 1, alpha: 1)
var clear = UIColor(white: 0, alpha: 0)

class MainViewController: UIViewController, SCNSceneRendererDelegate
{
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
		sceneView = self.view as! SCNView
		sceneView.scene = scene
		sceneView.backgroundColor = UIColor.blackColor()
		sceneView.antialiasingMode = SCNAntialiasingMode.None
		sceneView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:))))
		sceneView.preferredFramesPerSecond = 30
		sceneView.playing = true
		sceneView.showsStatistics = false
		sceneView.delegate = self
		
		// Camera
		scene.rootNode.addChildNode(camera)
		
		scene.rootNode.addChildNode(world)
		scene.rootNode.addChildNode(player)
		
		console.log(self, message: "test")
	}
	
	override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
	{
		for touch: AnyObject in touches {
			touchOrigin = touch.locationInView(self.view)
		}
	}
	
	override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
	{
		for touch: AnyObject in touches {
			touchPosition = touch.locationInView(self.view)
		}
		
		touchOrigin = touchPosition
	}
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
	{
		
	}
	
	func handleTap(gestureRecognize: UIGestureRecognizer)
	{
		let p = gestureRecognize.locationInView(sceneView)
		
		let hitResults = sceneView.hitTest(p, options: nil)
		
		if hitResults.count > 0
		{
			let result: AnyObject! = hitResults[0]
			(result.node as! Empty).touch()
		}
	}
	
	func renderer(renderer: SCNSceneRenderer, updateAtTime time: NSTimeInterval)
	{
		glLineWidth(1)
	}
	
	override func prefersStatusBarHidden() -> Bool
	{
		return true
	}
}