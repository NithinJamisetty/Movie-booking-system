//
//  movie_book.swift
//  haritha's movie booking
//
//  Created by Nithin on 31/10/23.
//  Copyright © 2023 gyh. All rights reserved.
//

import UIKit
var moviename = String()
var myindex = 0

var telugumovies = ["Salaar","Bagavanth Kesari","Adipurursh","Hi Nana","Sultan"]
var telugumovieimages = ["to3","to4","to1","to2","to5"]
var telugumoviessend  = [UIImage(named: "to3"),UIImage(named: "to4"),UIImage(named: "to1"),UIImage(named: "to2"),UIImage(named: "to5")]
var telugumovietrailers = [
    URL(string: "https://www.youtube.com/watch?v=bUR_FKt7Iso"),
    URL(string: "https://youtu.be/00mFeykBgVM?si=IzjWPleeHlcQBOgz"),
    URL(string: "https://youtu.be/e3ew7YUeeQc?si=I7uslz55VPWb4m_M"),
    URL(string: "https://youtu.be/GDVT4raMjRY?si=gSx_kXeBQF7sRWrZ"),
    URL(string: "https://youtu.be/y9J3M48p6Zg?si=7dae4IQ09n0YTU0y")
]
var telugumoviedesc = ["Salaar","Bagavanth Kesari","Adipurursh","Hi Nana","Sultan"]
var hindimovieimages = ["Ho1","Ho2","Ho3","Ho4","Ho5"]
var hindimoviessend = [UIImage(named: "Ho1"),UIImage(named: "Ho2"),UIImage(named: "Ho3"),UIImage(named: "Ho4"),UIImage(named: "Ho5")]
var hindimovies = ["Ganapath","Animal","Jawan","IB 71","Rocky Aur Rani"];
var hindimovietrailers = [URL(string: "https://youtu.be/szovD3BnvJI?si=HbgNidD2cngD9RHT"),
                          URL(string: "https://youtu.be/Dydmpfo68DA?si=2DtQVqHjpi3WpYFf"),
                          URL(string: "https://youtu.be/COv52Qyctws?si=fdo1msXLBQBCF1co"),
                          URL(string: "https://youtu.be/Dydmpfo68DA?si=2DtQVqHjpi3WpYFf"),
                          URL(string: "https://youtu.be/6mdxy3zohEk?si=1zbTIXlqoNfelRrg")]
var englishmovieimages = ["Eo1","Eo2","Eo3","Eo4","Eo5"]
var englishmoviessend = [UIImage(named: "Eo1"),UIImage(named: "Eo2"),UIImage(named: "Eo3"),UIImage(named: "Eo4"),UIImage(named: "Eo5")]
var englishmovies = ["Wakanda Forever","BlueBeetle","Thor(Love and Thunder)","John Wick","Open Heimer"];
var englishmovietrailers = [URL(string: "https://youtu.be/_Z3QKkl1WyM?si=4wI8uzyOia5Mjzbl"),
                          URL(string: "https://youtu.be/vS3_72Gb-bI?si=YI-X73jB65MpmMm_"),
                          URL(string: "https://youtu.be/Go8nTmfrQd8?si=2KjwK9xzAIimDWqH"),
                          URL(string: "https://youtu.be/qEVUtrk8_B4?si=XQv9um1B2XpbHVzr"),
                          URL(string: "https://youtu.be/bK6ldnjE3Y0?si=LhEu8bf1m9vXjm6c")]
var tamilmovieimages = ["ta1","ta2","ta3","ta4","ta5"]
var tamilmovies = ["Patner","DD Returns","Leo","Pathu Thala","Jailer"];
var tamilmoviessend = [UIImage(named: "ta1"),UIImage(named: "ta2"),UIImage(named: "ta3"),UIImage(named: "ta4"),UIImage(named: "ta5")]
var tamilmovietrailers = [URL(string: "https://youtu.be/6P5v-VYvZdQ?si=uO-VG55l8iUS6FDz"),
                          URL(string: "https://youtu.be/7MnPeSmDoiE?si=8O2rnINzOxW649LQ"),
                          URL(string: "https://youtu.be/Po3jStA673E?si=H0G4ZTWFDV31cjqA"),
                          URL(string: "https://youtu.be/pnUUJY3HQZk?si=uBVRCspje4oPsanX"),
                          URL(string: "https://youtu.be/Y5BeWdODPqo?si=eACtFdWuXGimgbpu")]

class movie_book: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var mytable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(moviename == "Tollywood"){
            return telugumovies.count;
        }else if(moviename == "Bollywood"){
            return hindimovies.count;
        }else if(moviename == "Hollywood"){
            return englishmovies.count;
        }else{
            return tamilmovies.count;
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = mytable.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
            switch moviename {
            case "Tollywood":
                cell.textLabel?.text = telugumovies[indexPath.row]
                cell.imageView?.image = UIImage(named: telugumovieimages[indexPath.row])
                cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.height)!/2
            case "Bollywood":
                cell.textLabel?.text = hindimovies[indexPath.row]
                cell.imageView?.image = UIImage(named: hindimovieimages[indexPath.row])
                cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.height)!/2
            case "Hollywood":
                cell.textLabel?.text = englishmovies[indexPath.row]
                cell.imageView?.image = UIImage(named: englishmovieimages[indexPath.row])
                cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.height)!/2
            default:
                cell.textLabel?.text = tamilmovies[indexPath.row]
                cell.imageView?.image = UIImage(named: tamilmovieimages[indexPath.row])
                cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.height)!/2
            }
            return cell
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        var selected = "";
        var selectedimage = UIImage();
        var selectedtrailer = URL(string: "");
        
        if(moviename == "Tollywood"){
            selected = telugumovies[indexPath.row];
            selectedimage = telugumoviessend[indexPath.row]!;
            selectedtrailer = telugumovietrailers[indexPath.row];
            performSegue(withIdentifier: "cell2", sender: nil);
            moviename1 = selected;
            movieimage1 = selectedimage;
            trailerurl = selectedtrailer;
           
        }else if(moviename == "Bollywood"){
            selected = hindimovies[indexPath.row];
            selectedimage = hindimoviessend[indexPath.row]!
            selectedtrailer = hindimovietrailers[indexPath.row];
            performSegue(withIdentifier: "cell2", sender: nil);
            moviename1 = selected;
            movieimage1 = selectedimage;
            trailerurl = selectedtrailer;
        }else if(moviename == "Hollywood"){
            selected = englishmovies[indexPath.row];
            selectedimage = englishmoviessend[indexPath.row]!
            selectedtrailer = englishmovietrailers[indexPath.row];
            performSegue(withIdentifier: "cell2", sender: nil);
            moviename1 = selected;
            movieimage1 = selectedimage;
            trailerurl = selectedtrailer;
        }else{
            selected = tamilmovies[indexPath.row];
            selectedimage = tamilmoviessend[indexPath.row]!
            selectedtrailer = tamilmovietrailers[indexPath.row];
            performSegue(withIdentifier: "cell2", sender: nil);
            moviename1 = selected;
            movieimage1 = selectedimage;
            trailerurl = selectedtrailer;
        }
    }

}
