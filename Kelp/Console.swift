
//  Created by Devine Lu Linvega on 2016-05-29.
//  Copyright © 2016 Devine Lu Linvega. All rights reserved.

import Foundation

class Console
{
	init()
	{
		
	}
	
	func log(host:AnyObject,message:String,rune:String = "~")
	{
		let host = "\(host.classForCoder)"
		print("\(host.stringByPaddingToLength(20, withString: " ", startingAtIndex: 0)) \(rune) \(message)")
	}
}