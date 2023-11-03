//
//  Home_page__.swift
//  haritha's movie booking
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 gyh. All rights reserved.
//

import UIKit



class Home_page__: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: eventImages[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCollectionView.frame.width, height: myCollectionView.frame.height)
    }
    var moviename1 = " "
    
    
    @IBAction func b1(_ sender: Any) {
        performSegue(withIdentifier: "booking", sender: nil)
        moviename1 = "Bollywood";
        moviename = moviename1
    }
    @IBAction func k1(_ sender: Any) {
        performSegue(withIdentifier: "booking", sender: nil)
        moviename1 = "Kollywood";
        moviename = moviename1
    }
    @IBAction func h1(_ sender: Any) {
        performSegue(withIdentifier: "booking", sender: nil)
        moviename1 = "Hollywood";
        moviename = moviename1
    }
    @IBAction func t1(_ sender: Any) {
        performSegue(withIdentifier: "booking", sender: nil)
        moviename1 = "Tollywood";
        moviename = moviename1
    }
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var myPageControll: UIPageControl!
    @IBOutlet weak var myCollectionView: UICollectionView!
    var eventImages = ["poster6","poster1","poster2","poster3"]
    var currentCellindex = 0
    var timer:Timer?
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Welcome, \(name)"
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true )
    }
    @objc func slideToNext()
    {
        if currentCellindex < eventImages.count - 1
        {
            currentCellindex = currentCellindex + 1
        }
        else
        {
            currentCellindex = 0
        }
        myPageControll.currentPage = currentCellindex
        myCollectionView.scrollToItem(at: IndexPath(item: currentCellindex, section: 0), at: .right, animated: true)
    }
}


