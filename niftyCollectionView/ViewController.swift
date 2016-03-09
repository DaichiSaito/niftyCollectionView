//
//  ViewController.swift
//  niftyCollectionView
//
//  Created by DaichiSaito on 2016/03/09.
//  Copyright © 2016年 DaichiSaito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let smileImage:UIImage = UIImage(named: "smile.png")!
    @IBAction func uploadImage(sender: AnyObject) {
        //保存対象の画像ファイルを作成する
        let imageData: NSData = UIImagePNGRepresentation(self.smileImage)!
        let targetFile = NCMBFile.fileWithData(imageData) as! NCMBFile
        
        //更新・追加・削除用のメンバ変数
        var targetTitle: String = ""
        var targetMoney: String = ""
        var targetCommnet: String = ""
        var targetDisplayImage: UIImage? = nil
        
        //NCMBへデータを登録・編集をする
//        if self.editFlag == true {
        
//            //既存データを1件更新する
//            var saveError: NSError? = nil
//            let obj: NCMBObject = NCMBObject(className: "MemoClass")
//            obj.objectId = self.targetMemoObjectId
//            obj.fetchInBackgroundWithBlock({(NSError error) in
//                
//                if (error == nil) {
//                    
//                    obj.setObject(self.targetTitle, forKey: "title")
//                    obj.setObject(targetFile.name, forKey: "filename")
//                    obj.setObject(self.targetMoney, forKey: "money")
//                    obj.setObject(self.targetCommnet, forKey: "comment")
//                    obj.save(&saveError)
//                    
//                } else {
//                    print("データ取得処理時にエラーが発生しました: \(error)")
//                }
//            })
//            
//            //ファイルは更新があった際のみバックグラウンドで保存する
//            if targetFile.name != self.targetFileName {
//                
//                targetFile.saveInBackgroundWithBlock({ (error: NSError!) -> Void in
//                    
//                    if error == nil {
//                        print("画像データ保存完了: \(targetFile.name)")
//                    } else {
//                        print("アップロード中にエラーが発生しました: \(error)")
//                    }
//                    
//                    }, progressBlock: { (percentDone: Int32) -> Void in
//                        
//                        // 進捗状況を取得します。保存完了まで何度も呼ばれます
//                        print("進捗状況: \(percentDone)% アップロード済み")
//                })
//            }
//            
//            if saveError == nil {
//                print("success save data.")
//            } else {
//                print("failure save data. \(saveError)")
            
            
//        } else {
    
            //新規データを1件登録する
            var saveError: NSError? = nil
            let obj: NCMBObject = NCMBObject(className: "MemoClass")
//            obj.setObject(self.targetTitle, forKey: "title")
//            obj.setObject(targetFile.name, forKey: "filename")
//            obj.setObject(self.targetMoney, forKey: "money")
//            obj.setObject(self.targetCommnet, forKey: "comment")
            obj.setObject("タイトルだよ", forKey: "title")
            obj.setObject("ファイル名だよ", forKey: "filename")
            obj.setObject("価格だよ", forKey: "money")
            obj.setObject("コメントだよ", forKey: "comment")
            obj.save(&saveError)
            
            //ファイルはバックグラウンド実行をする
            targetFile.saveInBackgroundWithBlock({ (error: NSError!) -> Void in
                
                if error == nil {
                    print("画像データ保存完了: \(targetFile.name)")
                } else {
                    print("アップロード中にエラーが発生しました: \(error)")
                }
                
                }, progressBlock: { (percentDone: Int32) -> Void in
                    
                    // 進捗状況を取得します。保存完了まで何度も呼ばれます
                    print("進捗状況: \(percentDone)% アップロード済み")
            })
            
            if saveError == nil {
                print("success save data.")
            } else {
                print("failure save data. \(saveError)")
            }
        }
        
//        //UITextFieldを空にする
//        self.titleField.text = ""
//        self.moneyField.text = ""
//        self.commnetField.text = ""

        //登録されたアラートを表示してOKを押すと戻る
//        let errorAlert = UIAlertController(
//            title: "完了",
//            message: "入力データが登録されました。",
//            preferredStyle: UIAlertControllerStyle.Alert
//        )
//        errorAlert.addAction(
//            UIAlertAction(
//                title: "OK",
//                style: UIAlertActionStyle.Default,
//                handler: saveComplete
//            )
//        )
//        presentViewController(errorAlert, animated: true, completion: nil)
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

