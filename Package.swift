import PackageDescription

let package = Package(
    name: "swiftdb",
    dependencies:[
      .Package(url:"https://github.com/vapor/mysql", majorVersion:1)
    ]
)
