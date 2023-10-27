//
//  HeroCellView.swift
//  DragonBall
//
//  Created by Daniel Cazorro Frías on 25/10/23.
//

import UIKit


class HeroCellView: UITableViewCell {
    static let identifier: String = "HeroCellView"
    static let estimateHeight: CGFloat = 200
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var heroeDescription: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        name.text = nil
        photo.image = nil
        heroeDescription.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        containerView.layer.cornerRadius = 8
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOffset = .zero
        containerView.layer.shadowRadius = 8
        containerView.layer.shadowOpacity = 0.6
        
        selectionStyle = .none
    }
    
    func updateView(
        name: String? = nil,
        photo: String? = nil,
        description: String? = nil
    ) {
        self.name.text = name
        self.heroeDescription.text = description
        
        //TODO: Descargar imagen y setearla en el ImageView de la photo
    }
}
