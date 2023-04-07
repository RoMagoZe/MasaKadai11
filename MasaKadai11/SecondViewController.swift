//
//  SecondViewController.swift
//  MasaKadai11
//
//  Created by Mina on 2023/04/08.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate {

    @IBOutlet private weak var tableView: UITableView!
    private let prefectures = Prefectures()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.prefecturesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = prefectures.prefecturesArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = prefectures.prefecturesArray[indexPath.row]
        let preVC = self.presentingViewController as? FirstViewController
        preVC?.prefectureLabel.text = data
        dismiss(animated: true)
    }
}
