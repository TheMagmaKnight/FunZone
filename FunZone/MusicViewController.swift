//
//  MusicViewController.swift
//  FunZone
//
//  Created by admin on 5/26/22.
//

import UIKit

class MusicViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let songData = ["Portal2-01-Science_is_Fun","Portal2-02-Concentration_Enhancing_Menu_Initialiser","Portal2-03-999999","Portal2-04-The_Courtesy_Call","Portal2-05-Technical_Difficulties","Portal2-06-Overgrowth","Portal2-07-Ghost_of_Rattman","Portal2-08-Haunted_Panels","Portal2-09-The_Future_Starts_With_You","Portal2-10-There_She_Is","Portal2-11-You_Know_Her","Portal2-12-The_Friendly_Faith_Plate","Portal2-13-15_Acres_of_Broken_Glass","Portal2-14-Love_as_a_Construct","Portal2-15-I_Saw_a_Deer_Today","Portal2-16-Hard_Sunshine","Portal2-17-I_Am_Different","Portal2-18-Adrenal_Vapor","Portal2-19-Turret_Wife_Serenade","Portal2-20-I_Made_It_All_Up","Portal2-21-Comedy_Equals_Tragedy_Plus_Time","Portal2-22-Triple_Laser_Phase"]
    let songName = ["Science is Fun","Concentration Enhancing Menu Initialiser","999999","The Courtesy Call","Technical Difficulties","Overgrowth","Ghost of Rattman","Haunted Panels","The Future Starts With You","There She Is","You Know Her?","The Friendly Faith Plate","15 Acres of Broken Glass","Love as a Construct","I Saw a Deer Today","Hard Sunshine","I'm Different","Adrenal Vapor","Turret Wife Serenade","I Made It All Up","Comedy=Tragedy+Time","Triple Laser Phase"]
    let albumImage = "Portal_AlbumCover"
    let artist = "Valve"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MusicTableViewCell
        cell.songName.text = songName[indexPath.row]
        cell.artistName.text = artist
        cell.albumImage.image = UIImage(named:albumImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 1:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 2:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 3:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 4:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 5:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 6:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 7:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 8:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 9:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 10:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 11:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 12:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 13:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 14:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 15:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 16:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 17:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 18:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 19:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 20:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
        case 21:
            let storyObject = UIStoryboard(name:"Main",bundle: nil)
            let musicPlayer = storyObject.instantiateViewController(withIdentifier: "musicPlayerView") as! MusicPlayerViewController
            musicPlayer.musicFile = songData[indexPath.row]
            musicPlayer.displayImage = albumImage
            self.present(musicPlayer,animated: true,completion: nil)
            print(songData[indexPath.row])
            
        default:
            print("Trouble selecting Desired Song")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.rowHeight

        // Do any additional setup after loading the view.
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
