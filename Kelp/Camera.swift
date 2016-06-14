
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Camera : Empty
{
	override init()
	{
		super.init()
		
		self.camera = SCNCamera()
		self.camera?.xFov = 25
		self.camera?.automaticallyAdjustsZRange = true
		
		ui.position = SCNVector3(0,-0.4,-2)
		
		addChildNode(ui)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
