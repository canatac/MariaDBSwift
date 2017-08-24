//
// MIT License
// Copyright (c) 2016 iAchieved.it
//
import MySQL
import Foundation
import Jay


print("Hello, world!")

print("Let's add some records to a database")

var mysql:Database
do {
    mysql       = try Database(host:"localhost",
                    user:"root",
                    password:"",
                    database:"local_ecautions")
    let results = try mysql.execute("SELECT @@version")
    print("VERSION : \(results)")
    
    let selectResults = try mysql.execute("SELECT pk_tarif_facturation_id, fk_banque_id, fk_entite_id,type_utilisateur, mode_facturation FROM local_ecautions.tarif_facturation  WHERE fk_banque_id = 7 AND fk_entite_id = 2689 AND type_utilisateur = 1 AND mode_facturation = 0")
    print("SELECT RESULTS : \(selectResults)")
    
} catch {
  print("Unable to connect to MySQL:  \(error)")
}


