//
//  ViewController.swift
//  tryViber
//
//  Created by 游宗諭 on 2020/1/3.
//  Copyright © 2020 游宗諭. All rights reserved.
//
import UIKit
import AudioToolbox

class ViewController: UIViewController {
	
	var timer:Timer?
	@IBAction func didTapButton(_ sender: UIButton) {
		timer?.invalidate()
		var count = 4
		timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) {
			count -= 1
			if count == 0 {
				$0.invalidate()
				return
			}
			AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
		}
	}
}
