
//  Created by Devine Lu Linvega on 2015-07-13.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Rect : Empty
{
	init(size:CGSize)
	{
		super.init()
		
		geometry = SCNPlane(width: size.width, height: size.height)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
