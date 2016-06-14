
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Player : Tile
{
	
	init()
	{
		super.init(position: SCNVector3(0,0,0))
		
		let plane = Rect(size: CGSize(width: 1,height: 2))
		plane.eulerAngles.x = degToRad(-45)
		plane.geometry?.materials.first?.diffuse.contents = red
		plane.position = SCNVector3(0,0.75,0)
		
		self.addChildNode(plane)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
