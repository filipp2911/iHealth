//
//  VideoHealthViewController.swift
//  iHealth
//
//  Created by Filipp Krupnov on 2/12/20.
//

import UIKit
import WebKit

class VideoHealthViewController: UIViewController {
    
    @IBOutlet weak var weightTrainVid: WKWebView!
    @IBOutlet weak var crossFitVid: WKWebView!
    @IBOutlet weak var cardioVid: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let symptomsURL = URL(string: "https://www.youtube.com/watch?v=U8r3oTVMtQ0")
        weightTrainVid.load(URLRequest(url: symptomsURL!))
       // weightTrainVid.mediaPlaybackRequiresUserAction = true;
        //weightTrainVid.allowsInlineMediaPlayback = false;
        
        let treatmentURL = URL(string: "https://www.youtube.com/watch?v=ZqaPZ3ST1AY")
        crossFitVid.load(URLRequest(url: treatmentURL!))
        //crossFitVid.mediaPlaybackRequiresUserAction = true;
        //crossFitVid.allowsInlineMediaPlayback = false;
        
        let staySafeURL = URL(string: "https://www.youtube.com/watch?v=DCdxsnRF1Fk")
        cardioVid.load(URLRequest(url: staySafeURL!))
       // cardioVid.mediaPlaybackRequiresUserAction = true;
        //cardioVid.allowsInlineMediaPlayback = false;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
