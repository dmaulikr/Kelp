
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class World : Empty
{
	var depths:Array<SCNNode> = []
	
	override init()
	{
		super.init()
		
		self.position = SCNVector3(0,0,-10)
		
		var d:Float = 0
		while d < 5 {
			let layer = SCNNode(geometry: SCNPlane(width: 3, height: 3))
			layer.position = SCNVector3(0,0,(d/2))
			layer.opacity = 0.25
			depths.append(layer)
			addChildNode(layer)
			d += 1
		}
		enter(collection.mirror)
	}
	
	func enter(vignette:Vignette)
	{
		
		depths[0].geometry?.materials.first!.diffuse.contents = UIImage(named: "\(vignette.name).1")
		vignette.whenEnter()
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
