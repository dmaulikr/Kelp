
//  Created by Devine Lu Linvega on 2016-04-22.
//  Copyright © 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Vignette : Empty
{
//	let layers:Array<Rect>!
	let layer1 = Rect(size: CGSize(width: 3, height: 3))
	let layer2 = Rect(size: CGSize(width: 3, height: 3))
	let layer3 = Rect(size: CGSize(width: 3, height: 3))
	let layer4 = Rect(size: CGSize(width: 3, height: 3))
	let layer5 = Rect(size: CGSize(width: 3, height: 3))
	
	override init()
	{
		super.init()
		
		eulerAngles.z = degToRad(90)
		
		addChildNode(layer1)
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
