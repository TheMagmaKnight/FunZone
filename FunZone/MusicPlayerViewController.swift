//
//  MusicPlayerViewController.swift
//  FunZone
//
//  Created by admin on 6/2/22.
//

import UIKit
import AVFoundation

class MusicPlayerViewController: UIViewController {

    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var playTime: UILabel!
    var musicFile:String?
    var displayImage:String?
    var audioPlayer:AVAudioPlayer?
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //filePath = "Portal2-01-Science_is_Fun"
        songImage.image = UIImage(named: displayImage!)
        //print(musicFile)
        let filePath = Bundle.main.path(forResource: musicFile, ofType: "mp3")
        //print(filePath)
        let url = URL(fileURLWithPath: filePath!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf:url)
        }catch{
            print("Error:Unable to find File")
        }
        
    }
    @IBAction func playClick(_ sender: Any) {
        audioPlayer?.play()
        playTime.text = audioPlayer?.currentTime.description //String(format:"%f",audioPlayer?.currentTime as! CVarArg)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayTime), userInfo: nil, repeats: true)
        print("Music is playing")
    }
    @IBAction func pauseClick(_ sender: Any) {
        audioPlayer?.stop()
        timer?.invalidate()
        print("Music has stopped")
    }
    @objc func updatePlayTime(){
        playTime.text = audioPlayer?.currentTime.description //String(format: "%f", audioPlayer?.currentTime as! CVarArg)
        progress.progress = Float(audioPlayer!.currentTime)/Float(audioPlayer!.duration)
        print("playTime updated")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
