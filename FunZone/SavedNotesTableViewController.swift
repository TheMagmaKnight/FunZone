//
//  SavedNotesTableViewController.swift
//  FunZone
//
//  Created by admin on 6/5/22.
//

import UIKit
//var noteTextPass:String?
//func getText() -> String{
//    return noteTextPass!
//}
class SavedNotesTableViewController: UITableViewController {
    //@IBOutlet weak var label: UILabel!
    let notes = UserDefaults.standard
    var notesArry:[String]?
    var noteTextPass = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        notesArry = notes.stringArray(forKey: "notesKey")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArry!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selected = UIView()
        selected.backgroundColor = UIColor.systemYellow
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SavedNotesTableViewCell
        cell.backgroundColor = UIColor.init(red: 0.796, green: 0.635, blue: 0, alpha: 1)
        cell.selectedBackgroundView = selected
        cell.label.text = notesArry![indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for index in 1..<Int(notesArry!.count){
            if indexPath.row == index{
                //noteTextPass = notesArry![indexPath.row]
                let storyObject = UIStoryboard(name: "Main", bundle: nil)
//                let notesView = storyObject.instantiateViewController(withIdentifier: "Notes") as! NotesViewController
                //let thisView = storyObject.instantiateViewController(withIdentifier: "SavedNotes") as! SavedNotesTableViewController
                noteTextPass.set(notesArry![indexPath.row] as String, forKey: "textPassKey") //= notesArry![indexPath.row]
                print(noteTextPass)
                //notesView.noteText = notesArry![indexPath.row]
                dismiss(animated: true, completion:nil) //{notesView.noteText = thisView.noteTextPass;notesView.reload()})
                //show(notesView, sender: (Any).self)
//                let welcomeScreen = storyObject.instantiateViewController(withIdentifier:"welcome") as! UITabBarController
//                present(welcomeScreen, animated:true,completion:{welcomeScreen.selectedIndex = 2;/*let storyObject = UIStoryboard(name: "Main", bundle: nil);let notesView = storyObject.instantiateViewController(withIdentifier: "Notes") as! NotesViewController;let noteTextHere = getText();print(noteTextHere);notesView.reload(noteTextRes:noteTextHere)*/})
                //present(welcomeScreen,animated: true,completion:nil)
                break
            }
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
