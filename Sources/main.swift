//
// MIT License
//
import MySQL

print("Hello, world!")

var host = "localhost"
var user = "root"
var password = ""
var database = "local_ecautions"

var mysql:Database
do {
    mysql       = try Database(host:host,
                    user:user,
                    password:password,
                    database:database)
    let results = try mysql.execute("SELECT @@version")
    print("VERSION : \(results)")
    
} catch {
  print("Unable to connect to MySQL:  \(error)")
}


