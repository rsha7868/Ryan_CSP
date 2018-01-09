//
//  BucketItemCell.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 1/9/18.
//  Copyright © 2018 Sharp, Ryan. All rights reserved.
//
import UIKit

class BucketItemCell: UITableViewCell
{
    @IBOutlet weak var bucketItemList : UILabel!
    @IBOutlet weak var bucketItemSymbol : UILabel!
    @IBOutlet weak var bucketItemSignature : UILabel!
    
    var bucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    private func randomEmoji()->String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        
        return emoji!
    }
    private func updateCellView()
    {
        if(bucketItem != nil)
        {
            bucketItemSignature.text = bucketItem.itemAuthor
            bucketItemText.text = bucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "author goes here"
            bucketItemText.text = "text goes here"
        }
        bucketItemSymbol.text = randomEmojiSymbol()
    }
    public override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    public override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    lazy var bucketList : [BucketItem] =
        {
         return loadBucketListFromFile()
        }()
    private func loadBucketListFromFile() -> [BucketItem]
    {
        var items = [BucketItem]()
        if let filePath = Bundle.main.url(forResource: "bucket", withExtension: "csv")
        {
            do
            {
                let input = try String(contentsOf: filePath)
                let bucketLines = input.components(separatedBy: "\n")
                for line in bucketLines
                {
                    let item = line.components(separatedBy: ",")
                    items.append(BucketItem(Contents: item[0], author: item[1]))
                }
            }
            catch
            {
                print("File laod error")
            }
        }
        return items
    }
    overirde
    
}
