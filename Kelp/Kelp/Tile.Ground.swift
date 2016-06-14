
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Ground : Tile
{
	override init(position:SCNVector3)
	{
		super.init(position: position)
		
		let plane = Rect(size: CGSize(width: 0.9,height: 0.9))
		plane.eulerAngles.x = degToRad(-90)
		self.addChildNode(plane)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
