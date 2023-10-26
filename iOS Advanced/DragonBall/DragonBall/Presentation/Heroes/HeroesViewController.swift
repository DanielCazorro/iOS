//
//  HeroesViewController.swift
//  DragonBall
//
//  Created by Daniel Cazorro Frías on 25/10/23.
//

import UIKit


class HeroesViewController: UIViewController {
    // MARK: - IBOutlet -
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - LifeCycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    // MARK: - Private functions -
    private func initViews() {
        tableView.register(
            UINib(nibName: HeroCellView.identifier, bundle: nil),
            forCellReuseIdentifier: HeroCellView.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HeroesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        HeroCellView.estimateHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HeroCellView.identifier,
                                                       for: indexPath) as? HeroCellView else {
            
            return UITableViewCell()
        }
        
        //TODO: Llamar a cell.update
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO: Navegar a detalle Hero
    }
}
