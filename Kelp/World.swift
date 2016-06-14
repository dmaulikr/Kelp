
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
		
		var d:Float = 0
		while d < 5 {
			let layer = SCNNode(geometry: SCNPlane(width: 3, height: 3))
			layer.position = SCNVector3(0,0,0)
			depths.append(layer)
			addChildNode(layer)
			d += 1
		}
		
		// Floor
		floor.geometry?.materials.first?.diffuse.contents = red
		floor.eulerAngles.x = degToRad(-90)
		floor.opacity = 0.1
		addChildNode(floor)
		
		
		enter(collection.mirror)
	}
	
	func enter(vignette:Vignette)
	{
		// Floor
//		floor.geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).floor")
		
		// Layers
		depths[0].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).0")
		depths[1].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).1")
		depths[2].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).2")
		depths[3].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).3")
		depths[4].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).4")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
