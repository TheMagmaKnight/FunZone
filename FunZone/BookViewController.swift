//
//  BookViewController.swift
//  FunZone
//
//  Created by admin on 6/1/22.
//

import UIKit

class BookViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let booksData = ["TIS-100 Reference Manual","2017-Fusion-Hybrid-Owner-Manual-version-3_OM_EN-US_02_2017","CookBook"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booksData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BookCollectionViewCell
        cell.bookTitle.text = booksData[indexPath.row]
        cell.bookImage.image = UIImage(named:"Icon_holotape")
        cell.backgroundColor = UIColor.systemYellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let PDFView = storyObject.instantiateViewController(withIdentifier: "pdfView") as! PDFViewController
            PDFView.PDF = booksData[indexPath.row]
            self.present(PDFView, animated:true,completion:nil)
            print(booksData[indexPath.row])
        case 1:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let PDFView = storyObject.instantiateViewController(withIdentifier: "pdfView") as! PDFViewController
            PDFView.PDF = booksData[indexPath.row]
            self.present(PDFView, animated:true,completion:nil)
            print(booksData[indexPath.row])
        case 2:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let PDFView = storyObject.instantiateViewController(withIdentifier: "pdfView") as! PDFViewController
            PDFView.PDF = booksData[indexPath.row]
            self.present(PDFView, animated:true,completion:nil)
            print(booksData[indexPath.row])
        default:
            print("No Item was selected")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
