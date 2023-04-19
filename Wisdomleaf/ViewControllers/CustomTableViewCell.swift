//
//  CustomTableViewCell.swift
//  Wisdomleaf
//
//  Created by Rahul on 19/04/23.
//

import UIKit
import SDWebImage

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    
    @IBOutlet weak var titileLabel: UILabel!
    @IBOutlet weak var decpLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var checkIcon: UIImageView!
    
    private weak var delegate: CheckBoxDelegate?
    private var index: Int = 0
    private var data: CountryModel!


    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGroupedBackground
        self.contentView.backgroundColor = UIColor.systemGroupedBackground
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func prepareCell(with data: CountryModel, delegate: CheckBoxDelegate?, index: Int) {
        titileLabel.text = data.title
        decpLabel.text = data.description
        checkIcon.image = UIImage(named: data.isChecked ? "check" : "uncheck")
        self.delegate = delegate
        self.index = index
        self.data = data
        guard let url = URL(string: data.image) else {
            return
        }
        flagImageView.sd_setImage(with: url)
        flagImageView.contentMode = .scaleAspectFit
        
    }
    
    @IBAction func didCleckedCheckBox(_ sender: UIButton) {
        checkIcon.image = UIImage(named: data.isChecked ? "uncheck" : "check")
        delegate?.didClickedCheckBox(at: index)
    }
    
}
