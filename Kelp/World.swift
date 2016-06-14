
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class World : Empty
{
	var depths:Array<SCNNode> = []
	var floor = SCNNode(geometry:SCNPlane(width: 3, height: 3))
	
	override init()
	{
		super.init()
		
		self.position = SCNVector3(0,0,0)
		
		let wall_pivot = SCNNode()
		addChildNode(wall_pivot)
		
		let wall = SCNNode(geometry: SCNPlane(width: 3, height: 3))
		wall.position = SCNVector3(0,1.5 + 1,-1)
		depths.append(wall)
		wall_pivot.addChildNode(wall)
		
		let background_pivot = SCNNode()
		addChildNode(background_pivot)
		
		let background = SCNNode(geometry: SCNPlane(width: 3, height: 3))
		background.position = SCNVector3(0,1.5 + 0.5,-0.5)
		depths.append(background)
		background_pivot.addChildNode(background)
		
		let middleground_pivot = SCNNode()
		addChildNode(middleground_pivot)
		
		let middleground = SCNNode(geometry: SCNPlane(width: 3, height: 3))
		middleground.position = SCNVector3(0,1.5,0)
		depths.append(middleground)
		middleground_pivot.addChildNode(middleground)
		
		let foreground_pivot = SCNNode()
		addChildNode(foreground_pivot)
		
		let foreground = SCNNode(geometry: SCNPlane(width: 3, height: 3))
		foreground.position = SCNVector3(0,1.5 - 0.5,0.5)
		depths.append(foreground)
		foreground_pivot.addChildNode(foreground)
		
		// Floor
		floor.eulerAngles.x = degToRad(-90)
		floor.eulerAngles.x = degToRad(-45)
		addChildNode(floor)
		
		
		enter(collection.mirror)
	}
	
	func enter(vignette:Vignette)
	{
		// Floor
		floor.geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).floor")
		
		// Layers
		depths[0].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).0")
		depths[1].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).1")
		depths[2].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).2")
		depths[3].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).3")
//		depths[4].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).4")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
