//
//  NotesViewController.swift
//  FunZone
//
//  Created by admin on 5/26/22.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var notePad: UITextView!
    let notes = UserDefaults.standard
    let noteIndex = UserDefaults.standard
    var notesArry:[String]?
    var noteText:String?
    let noteTextPass = UserDefaults.standard
    //var testString = "This is the test string why doesn't the other shit work, does this shit work"
    //var index:Int?
    //var key:String?
    
//    func reload(noteTextRes:String){
//        noteText = noteTextRes
//        testString = noteTextRes
//        print(testString)
//        print("reload \(noteText)")
//    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //print(testString)
//        if noteText == nil{
//            noteText = "Type Your Notes Here!"
//        }
        //print(noteText)
        print("Did appear called")
        notePad.text = noteTextPass.string(forKey: "textPassKey")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextPass.set("Type Your Notes Here", forKey: "textPassKey")
        notePad.text = "Type Your Notes Here" //noteTextPass.string(forKey: "textPassKey")
        notesArry = notes.stringArray(forKey: "notesKey")
        if notesArry == nil{
            noteIndex.set(0, forKey: "noteIndexKey")
        }
        //print(noteIndex.integer(forKey: "noteIndexKey"))
        //print(notes.stringArray(forKey: "notesKey"))
        //print(notesArry)
        //index = notesArry?.count
        /*if noteIndex.integer(forKey: "notesKey") > 0{
            index = noteIndex.integer(forKey: "notesKey")
        } else {
            index = 0
        }
        key = index?.description*/
    }
    override func loadViewIfNeeded() {
        
    }
    @IBAction func saveClick(_ sender: Any) {
        noteText = notePad.text
        if noteIndex.integer(forKey: "noteIndexKey") == 0 {
            notesArry = [noteText!]
            noteIndex.set(1, forKey: "noteIndexKey")
            //print("First Element of the Array saved")
        }else{
            notesArry?.append(noteText! as String)
            var i = noteIndex.integer(forKey: "noteIndexKey")
            i += 1
            noteIndex.set(i, forKey: "noteIndexKey")
        }
        notes.set(notesArry, forKey: "notesKey")
        print(notesArry)
        //print("Note saved at index:\(noteIndex.integer(forKey:"noteIndexKey"))")
       
        
        /*index! += 1
        noteIndex.set(index, forKey: "notesKey")
        notes.set(notePad.text as String, forKey: key!)
        print("Note saved at index:\(String(describing: key))")*/
        
        //notes.set(notePad.text, forKey: "\(String(describing: noteIndex.value(forKey: "notesKey")))")
        //print("Note saved at index:\(String(describing: notes.value(forKey:"notesKey")))")
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
