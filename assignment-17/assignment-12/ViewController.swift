//
//  ViewController.swift
//  assignment-12
//
//  Created by Mohd Saif on 22/10/21.
//

import UIKit

extension UIImageView {
   
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
   
    
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}


struct Images : Decodable{
    let author : String
    let id : Int
    let author_url : String
}

let defaultLink = "https://picsum.photos/200/300?image="


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    var imageList = [Images]()
    var queue = OperationQueue()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNavBar()
        setupCollectionView()
        loadingData()
    }
    
    private func setupCollectionView() {
        collectionview.dataSource = self
        collectionview.delegate = self
    }
    
    private func loadingData() {
        
        let url = URL(string: "https://picsum.photos/list")
        URLSession.shared.dataTask(with: url!){(data,response,error) in
            if error == nil{
                
                do{
                self.imageList = try JSONDecoder().decode([Images].self, from: data!)
                }catch{
                    print("Parse Error")
                }
                
                DispatchQueue.main.async {
                    self.collectionview.reloadData()
                }
            }
        }.resume()
        
    }
    
    
    
    func setUpNavBar(){
        
        navigationController?.navigationBar.barTintColor = UIColor.gray
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
//        navigationItem.rightBarButtonItem = UIBarButtonItem(
//            barButtonSystemItem: .camera, target: nil, action: nil)
    
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.nameLbl.text = imageList[indexPath.row].author.capitalized
        cell.imageView.contentMode = .scaleToFill
        
        let completeLink = defaultLink + String(imageList[indexPath.row].id)
        
        var img: UIImage!
        let operation = BlockOperation(block: {
            img  = Downloader.downloadImageWithURl(completeLink)
        })

        operation.completionBlock = {
            DispatchQueue.main.async {
                cell.imageView.image = img
            }

        }
        queue.addOperation(operation)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondVC") as? SecondVC
        vc?.imageId = String(imageList[indexPath.row].id)
        vc?.author_url = String(imageList[indexPath.row].author_url)

        self.navigationController?.pushViewController(vc!, animated: true)
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.width - 40 ) / 2, height: 200)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) //.zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
}


class Downloader {
    class func downloadImageWithURl(_ url: String) -> UIImage! {
        if let data = try? Data(contentsOf: URL(string: url)!) {
            return UIImage(data: data)!
        }
        return nil
    }

}
