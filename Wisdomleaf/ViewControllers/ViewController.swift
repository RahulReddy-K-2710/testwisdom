//
//  ViewController.swift
//  Wisdomleaf
//
//  Created by Rahul on 19/04/23.
//

import UIKit
import SDWebImageSVGCoder

class ViewController: UIViewController {
    
    //MARK: Outlets.
    @IBOutlet weak var detailTableView: UITableView!
    var countryData = [CountryModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Conform Delegate Methods.
        countryData = CountryDataManager.getCountryData()
        detailTableView.register(UINib(nibName: CustomTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CustomTableViewCell.identifier)
        detailTableView.delegate = self
        detailTableView.dataSource = self
        self.title = "Counties Data"
    }
    // Create Refresh Function.
   @IBAction func clickRefreshButton() {
        SDImageCache.shared.clearMemory()
        SDImageCache.shared.clearDisk()
        detailTableView.reloadData()
    }
//MARK: UITableviewDelegate and DataSource.
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        cell.prepareCell(with: countryData[indexPath.row], delegate: self, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectTableViewCell(at: indexPath.row)
        
    }
    
}

//MARK: CheckBoxDelegate
extension ViewController: CheckBoxDelegate {
    func didClickedCheckBox(at index: Int) {
        countryData[index].update(isChecked: !countryData[index].isChecked)
    
    }
}
// MARK: Create the Alert and Dialoge .
extension ViewController {
    
    private func didSelectTableViewCell(at index: Int) {
        countryData[index].isChecked ? popUpMessage(with: countryData[index].description) : showAlert()
    }
   // Create show Alert.
    private func showAlert() {
        let alert = UIAlertController(title: "Titel", message: "Select check mark to see the description", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: false)
    }
  // Create Dialoge for Meassage.
    private func popUpMessage(with description: String) {
        guard let customAlert = AlertViewController.create() else { return }
        customAlert.providesPresentationContextTransitionStyle = true
        customAlert.definesPresentationContext = true
        customAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        customAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        customAlert.decpText = description
        self.present(customAlert, animated: true, completion: nil)
    }
}
