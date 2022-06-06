//
//  PDFViewController.swift
//  FunZone
//
//  Created by admin on 6/2/22.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {
    
    var PDF:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        let pdfView = PDFView(frame:view.bounds)
        pdfView.autoScales = true
        let filePath = Bundle.main.url(forResource:PDF,withExtension:"pdf")
        pdfView.document = PDFDocument(url: filePath!)
        view.addSubview(pdfView)
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
