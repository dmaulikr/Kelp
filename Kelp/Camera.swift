
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Camera : Empty
{
	let viewer = Empty()
	
	override init()
	{
		super.init()
		
		viewer.position = SCNVector3(0,0,5)
		viewer.camera = SCNCamera()
		viewer.camera?.automaticallyAdjustsZRange = true
		viewer.camera?.usesOrthographicProjection = true
		viewer.camera?.orthographicScale = 1.5
		addChildNode(viewer)
		
		ui.position = SCNVector3(0,-0.6,-2)
		
		addChildNode(ui)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
