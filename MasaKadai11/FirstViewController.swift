//
//  FirstViewController.swift
//  MasaKadai11
//
//  Created by Mina on 2023/04/08.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var prefectureLabel: UILabel!

    @IBAction private func unwind(segue: UIStoryboardSegue) {
        guard let secondVC = segue.source as? SecondViewController else { return }
        prefectureLabel.text = secondVC.selectedText
    }

    @IBAction private func exitCancle(segue: UIStoryboardSegue) {}
}
