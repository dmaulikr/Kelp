
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class World : Empty
{
	override init()
	{
		super.init()
		
		addChildNode(Ground(position: SCNVector3(0,0,0)))
		addChildNode(Ground(position: SCNVector3(1,0,0)))
		addChildNode(Ground(position: SCNVector3(-1,0,0)))
		addChildNode(Ground(position: SCNVector3(2,0,0)))
		addChildNode(Ground(position: SCNVector3(-2,0,0)))
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
