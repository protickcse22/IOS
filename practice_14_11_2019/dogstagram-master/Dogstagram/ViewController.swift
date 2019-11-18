import UIKit

struct Item {
    var imageName: String
}
class ViewController: UIViewController {
    var item: [Item] = [Item(imageName: "1"),
    Item(imageName: "2"),
    Item(imageName: "3"),
    Item(imageName: "4"),
    Item(imageName: "5"),
    Item(imageName: "6"),
    Item(imageName: "7"),
    Item(imageName: "8"),
    Item(imageName: "9"),
    Item(imageName: "10"),
    Item(imageName: "11"),
    Item(imageName: "12")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    var collectionViewFlowlayout: UICollectionViewFlowLayout!
    let cellIdentifier = "ItemCollectionViewCell"
    
    let viewImageIdentifier = "viewImageIdentifier"
    
    override func viewDidLoad() {
    super.viewDidLoad()
        setUpCollectionView()
    
  }
    
    override func viewWillLayoutSubviews() {
        setUpCollectionViewItemSize()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let itm = sender as! Item
    if segue.identifier == viewImageIdentifier{
        if let vc = segue.destination as? DetailViewController{
            vc.imageName = itm.imageName
        }
    }
    }
    
    private func setUpCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }
    
    private func setUpCollectionViewItemSize(){
        if collectionViewFlowlayout == nil{
            let numberOfItemForRow: CGFloat = 3
            let lineSpacing: CGFloat = 5
            let interItemSpacing: CGFloat = 5
            let width = (collectionView.frame.width - (numberOfItemForRow - 1) * interItemSpacing)/numberOfItemForRow
            
            let height = width
            collectionViewFlowlayout = UICollectionViewFlowLayout()
            collectionViewFlowlayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowlayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowlayout.scrollDirection = .vertical
            collectionViewFlowlayout.minimumLineSpacing = lineSpacing
            collectionViewFlowlayout.minimumInteritemSpacing = interItemSpacing
            
            collectionView.setCollectionViewLayout(collectionViewFlowlayout, animated: true)
            
        }
    }
  
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ItemCollectionViewCell
        cell.imageView.image = UIImage(named: item[indexPath.item].imageName)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let itm = item[indexPath.item]
        performSegue(withIdentifier: viewImageIdentifier, sender: itm)
    }

}

