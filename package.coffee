name: "mongo-utils"
version: "0.0.1"
private: true
main: "lib/utils.js"
dependencies:
  heroku: "0.0.6"

devDependencies:
  "coffee-script": "1.3.x"  

engines:
  node: "0.8.x"
  npm: "1.1.x"

optionalDependencies: {}
author: "Meryn Stol <merynstol@gmail.com>"
repository:
  type: "git"
  url: "git://github.com/meryn/mongo-utils.git"
  
scripts:
  prepublish: "cake build"