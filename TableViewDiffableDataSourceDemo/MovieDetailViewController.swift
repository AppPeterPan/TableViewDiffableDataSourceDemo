//
//  MovieDetailViewController.swift
//  TableViewDiffableDataSourceDemo
//
//  Created by SHIH-YING PAN on 2019/7/14.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: movie.actor)
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
