
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Layer : Empty
{
	init(depth:CGFloat)
	{
		super.init()
		
		addChildNode(Rect(size: CGSize(width: 3, height: 3)))
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
