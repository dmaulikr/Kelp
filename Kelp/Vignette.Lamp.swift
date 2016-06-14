
//  Created by Devine Lu Linvega on 2016-06-14.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class VignetteLamp : Vignette
{
	let layer1 = Layer(id:0)
	
	init()
	{
		super.init(name:"Lamp")
		
	}
		
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
