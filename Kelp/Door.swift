
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class Door : Empty
{
	var destination:Vignette!
	
	init(position:SCNVector3,size:CGSize,destination:Vignette)
	{
		super.init()
	}
	
	override func touch(id: Int)
	{
		console.log(self,message: "Touched door to \(destination.name)")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
