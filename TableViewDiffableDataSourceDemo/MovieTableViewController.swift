//
//  MovieTableViewController.swift
//  TableViewDiffableDataSourceDemo
//
//  Created by SHIH-YING PAN on 2019/7/12.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
     let romanceMovies = [Movie(name: "生命中的美好缺憾", actor: "雪琳", year: 2014), Movie(name: "真愛每一天", actor: "瑞秋", year: 2013), Movie(name: "手札情緣", actor: "雷恩", year: 2004)]

     let adventureMovies = [Movie(name: "蜘蛛人:返校日", actor: "湯姆", year: 2017), Movie(name: "蜘蛛人:驚奇再起", actor: "安德魯", year: 2012),Movie(name: "蜘蛛人", actor: "陶比", year: 2002)]
    
    var dataSource: UITableViewDiffableDataSource<Section, Movie>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = UITableViewDiffableDataSource<Section, Movie>(tableView: tableView, cellProvider: { (tableView, indexPath, movie) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
            cell.nameLabel.text = movie.name
            cell.yearLabel.text = movie.year.description
            cell.coverImageView.image = UIImage(named: movie.actor)
            return cell
        })
        tableView.dataSource = dataSource
        
        let snapshot = NSDiffableDataSourceSnapshot<Section, Movie>()
        snapshot.appendSections([.romance, .adventure])
        snapshot.appendItems(romanceMovies, toSection: .romance)
        snapshot.appendItems(adventureMovies, toSection: .adventure)
        dataSource.apply(snapshot, animatingDifferences: false)
        
    } 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let controller = segue.destination as? MovieDetailViewController
            controller?.movie = dataSource.itemIdentifier(for: indexPath)
        }
       
    }
}
