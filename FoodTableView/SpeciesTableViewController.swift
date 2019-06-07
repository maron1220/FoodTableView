//
//  SpeciesTableViewController.swift
//  FoodTableView
//
//  Created by 細川聖矢 on 2019/06/07.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class SpeciesTableViewController: UITableViewController {
    
    //Sectionタイトルの配列
    var speciesSection : [String] = []
    //textの配列
    var diseaseText : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //変数に代入しておく
        speciesSection = ["犬","猫"]
        diseaseText = ["腎臓","心臓","肝臓","泌尿器","皮膚","関節","消化器","体重管理"]
        
    }

    // MARK: - Table view data source
    
    //sectionの数
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return speciesSection.count
    }
    
    //secrionのタイトルを決める
    //自分で挿入
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return speciesSection[section]
    }

    //テキストを入力するセルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return diseaseText.count
    }

    //各行のセルを表示させるときに呼ばれる
    //表示内容を設定する
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiseaseCell", for: indexPath)

        // セルのラベルに何を表示するのか
        //diseaseTextからば該当するラベルを行に表示する
        //indexPath.rowで何行目かわかる
        //indexPath.rowはこの処理が呼ばれたときに表示するセルの行番号が入っている
        cell.textLabel?.text = diseaseText[indexPath.row]
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
