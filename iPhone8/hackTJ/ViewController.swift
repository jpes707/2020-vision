//
//  ViewController.swift
//  hackTJ
//
//  Created by Kevin Liu on 4/6/19.
//  Copyright © 2019 Kevin Liu. All rights reserved.
//

import UIKit

let user = Candidate()
var candName = "none ):"
let cands = [Candidate(foreign: 3, abortion: 5, gay: 4, environment: 4, taxRich: 4, borderWall: 1, gunControl: 4, healthcare: 3, name: "O'Rourke"), Candidate(foreign: 3, abortion: 4, gay: 5, environment: 5, taxRich: 5, borderWall: 2, gunControl: 4, healthcare: 5, name: "Sanders"), Candidate(foreign: 4, abortion: 5, gay: 5, environment: 5, taxRich: 3, borderWall: 1, gunControl: 5, healthcare: 3, name: "Klobuchar"), Candidate(foreign: 3, abortion: 4, gay: 5, environment: 4, taxRich: 4, borderWall: 1, gunControl: 5, healthcare: 5, name: "Warren"), Candidate(foreign: 3, abortion: 4, gay: 5, environment: 5, taxRich: 3, borderWall: 1, gunControl: 5, healthcare: 4, name: "Booker"), Candidate(foreign: 4, abortion: 4, gay: 5, environment: 4, taxRich: 4, borderWall: 1, gunControl: 4, healthcare: 4, name: "Buttigieg"), Candidate(foreign: 3, abortion: 5, gay: 4, environment: 4, taxRich: 3, borderWall: 1, gunControl: 4, healthcare: 5, name: "Harris"), Candidate(foreign: 2, abortion: 5, gay: 5, environment: 4, taxRich: 4, borderWall: 2, gunControl: 3, healthcare: 4, name: "Gillibrand"), Candidate(foreign: 2, abortion: 4, gay: 4, environment: 5, taxRich: 4, borderWall: 4, gunControl: 3, healthcare: 5, name: "Gabbard"), Candidate(foreign: 5, abortion: 1, gay: 2, environment: 1, taxRich: 1, borderWall: 5, gunControl: 2, healthcare: 1, name: "Trump")]

class ViewController: UIViewController {

    @IBOutlet weak var seg1: UISegmentedControl!
    @IBOutlet weak var seg2: UISegmentedControl!
    @IBOutlet weak var seg3: UISegmentedControl!
    @IBOutlet weak var seg4: UISegmentedControl!
    @IBOutlet weak var seg5: UISegmentedControl!
    @IBOutlet weak var seg6: UISegmentedControl!
    @IBOutlet weak var seg7: UISegmentedControl!
    @IBOutlet weak var seg8: UISegmentedControl!
    @IBOutlet weak var matchButton: UIButton!
    @IBOutlet weak var matchLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pictureFrame: UIImageView!
    @IBOutlet var myView: UIView!
    @IBOutlet weak var trump: UIButton!
    @IBOutlet weak var booker: UIButton!
    @IBOutlet weak var harris: UIButton!
    @IBOutlet weak var orourke: UIButton!
    @IBOutlet weak var sanders: UIButton!
    @IBOutlet weak var khobuchar: UIButton!
    @IBOutlet weak var warren: UIButton!
    @IBOutlet weak var buttigieg: UIButton!
    @IBOutlet weak var gillibrand: UIButton!
    @IBOutlet weak var gabbard: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*if visionMatchLabel != nil
        {
        visionMatchLabel.text = "Your guy is " + String(candName) + "!"
        }*/
    }
    
    @IBAction func save1(_ sender: UIButton) {
        user.setForeign(i: seg1.selectedSegmentIndex + 1)
        user.setAbort(i: seg2.selectedSegmentIndex + 1)
        user.setGay(i: seg3.selectedSegmentIndex + 1)
        user.setEnv(i: seg4.selectedSegmentIndex + 1)
    }
    
    @IBAction func save2(_ sender: UIButton) {
        user.setTax(i: seg5.selectedSegmentIndex + 1)
        user.setWall(i: seg6.selectedSegmentIndex + 1)
        user.setGun(i: seg7.selectedSegmentIndex + 1)
        user.setHealth(i: seg8.selectedSegmentIndex + 1)
        findMatch()
    }
    
    func findMatch() {
        var diff = [Int](repeating: 0, count: 10)
        for i in 0..<10 {
            diff[i] += abs(user.getForeign() - cands[i].getForeign())
            diff[i] += abs(user.getAbort() - cands[i].getAbort())
            diff[i] += abs(user.getGay() - cands[i].getGay())
            diff[i] += abs(user.getEnv() - cands[i].getEnv())
            diff[i] += abs(user.getTax() - cands[i].getTax())
            diff[i] += abs(user.getWall() - cands[i].getWall())
            diff[i] += abs(user.getGun() - cands[i].getGun())
            diff[i] += abs(user.getHealth() - cands[i].getHealth())
        }
        
        var min = 2000
        for i in 0..<10 {
            if diff[i] < min {
                min = diff[i]
            }
        }
        
        var ind = 0
        for i in 0..<10 {
            if diff[i] == min {
                ind = i
            }
        }
        
        candName = cands[ind].getName()
        print(candName)
    }
    
    @IBAction func revealMatch(_ sender: UIButton) {
        matchButton.setTitle("", for: .normal)
        nextButton.isEnabled = true
        matchButton.isEnabled = false
        nextButton.setTitle("→", for: .normal)
        matchLabel.text = "Your VisionMatch is " + candName + "!"
        if candName == "Trump"
        {
            pictureFrame.image = UIImage(named: "donald")
            myView.backgroundColor = UIColor.red
        }
        else if candName == "Booker"
        {
            pictureFrame.image = UIImage(named: "booker")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Harris"
        {
            pictureFrame.image = UIImage(named: "harris2")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Gillibrand"
        {
            pictureFrame.image = UIImage(named: "gillibrand")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Sanders"
        {
            pictureFrame.image = UIImage(named: "sanders")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "O'Rourke"
        {
            pictureFrame.image = UIImage(named: "bigboybeto")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Gabbard"
        {
            pictureFrame.image = UIImage(named: "bigbard")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Buttigieg"
        {
            pictureFrame.image = UIImage(named: "gaybuttjig")
            myView.backgroundColor = UIColor.blue
        }
        else if candName == "Klobuchar"
        {
            pictureFrame.image = UIImage(named: "klobuchar")
            myView.backgroundColor = UIColor.blue
        }
        else
        {
            pictureFrame.image = UIImage(named: "warren")
            myView.backgroundColor = UIColor.blue
        }
        
    }

    @IBAction func urlDirect(_ sender: UIButton) {
        if(sender == trump)
        {
        if let url = URL(string: "https://www.donaldjtrump.com")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == booker)
        {
            if let url = URL(string: "https://corybooker.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == harris)
        {
            if let url = URL(string: "https://kamalaharris.org/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == orourke)
        {
            if let url = URL(string: "https://betoorourke.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == khobuchar)
        {
            if let url = URL(string: "https://amyklobuchar.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == warren)
        {
            if let url = URL(string: "https://elizabethwarren.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == buttigieg)
        {
            if let url = URL(string: "https://www.peteforamerica.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == gillibrand)
        {
            if let url = URL(string: "https://kirstengillibrand.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == gabbard)
        {
            if let url = URL(string: "https://www.votetulsi.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        else if(sender == sanders)
        {
            if let url = URL(string: "https://berniesanders.com/")
            {
                UIApplication.shared.open(url, options: [:])
            }
        }
        
    }
    
    override public var prefersStatusBarHidden: Bool
    {
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }
    
}

