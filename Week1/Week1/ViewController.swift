//
//  ViewController.swift
//  Week1
//
//  Created by Onur  on 10-05-16.
//  Copyright © 2016 Onur . All rights reserved.
//

import UIKit
import AVFoundation

//pad naar geluidsbestand, => cat.mp3


class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    
    
    @IBAction func buttonClicked(sender:UIButton) {
        
        
        let filePath = NSBundle.mainBundle().pathForResource(sender.currentTitle?.lowercaseString, ofType: "mp3");
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: NSURL(string: filePath!)!)
            audioPlayer.play()
            
        }
        catch {
            print ("Fout");
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

