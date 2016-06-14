
//  Created by Devine Lu Linvega on 2015-07-16.
//  Copyright (c) 2016 XXIIVV. All rights reserved.

import UIKit
import QuartzCore
import SceneKit
import Foundation

class UI : Empty
{
	override init()
	{
		super.init()
	}
	
	override func touch(id: Int)
	{
		console.log(self, message: "Button:\(id)")
	}
	
	required init(coder aDecoder: NSCoder)
	{
		fatalError("init(coder:) has not been implemented")
	}
}
