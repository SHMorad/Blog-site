Microsoft Windows [Version 10.0.19044.2251]
(c) Microsoft Corporation. All rights reserved.

D:\xampp8110\htdocs\web3-batch-laravel\classes\class14-12112022\project12>composer init


  Welcome to the Composer config generator



This command will guide you through creating your composer.json config.

Package name (<vendor>/<name>) [wdpf/project12]:
Description []:
Author [asamamun <asamamun.web@gmail.com>, n to skip]:
Minimum Stability []:
Package Type (e.g. library, project, metapackage, composer-plugin) []: project
License []:

Define your dependencies.

Would you like to define your dependencies (require) interactively [yes]?
Search for a package: image
Info from https://repo.packagist.org: #StandWithUkraine

Found 15 packages matching image

   [0] intervention/image
   [1] nette/utils
   [2] symfony/asset
   [3] spatie/image
   [4] spatie/image-optimizer
   [5] spatie/laravel-medialibrary
   [6] spatie/browsershot
   [7] liip/imagine-bundle
   [8] league/glide
   [9] kartik-v/bootstrap-fileinput
  [10] barryvdh/laravel-snappy
  [11] imagine/imagine
  [12] composer/installers
  [13] knplabs/knp-snappy-bundle
  [14] spatie/pdf-to-image

Enter package # to add, or the complete package name if it is not listed: 0
Enter the version constraint to require (or leave blank to use the latest version):
Using version ^2.7 for intervention/image
Search for a package:
Would you like to define your dev dependencies (require-dev) interactively [yes]? no
Add PSR-4 autoload mapping? Maps namespace "Wdpf\Project12" to the entered relative path. [src/, n to skip]:

{
    "name": "wdpf/project12",
    "type": "project",
    "require": {
        "intervention/image": "^2.7"
    },
    "autoload": {
        "psr-4": {
            "Wdpf\\Project12\\": "src/"
        }
    },
    "authors": [
        {
            "name": "asamamun",
            "email": "asamamun.web@gmail.com"
        }
    ]
}

Do you confirm generation [yes]?
Would you like to install dependencies now [yes]?
Loading composer repositories with package information
Updating dependencies
Lock file operations: 5 installs, 0 updates, 0 removals
  - Locking guzzlehttp/psr7 (2.4.3)
  - Locking intervention/image (2.7.2)
  - Locking psr/http-factory (1.0.1)
  - Locking psr/http-message (1.0.1)
  - Locking ralouphie/getallheaders (3.0.3)
Writing lock file
Installing dependencies from lock file (including require-dev)
Package operations: 5 installs, 0 updates, 0 removals
  - Downloading guzzlehttp/psr7 (2.4.3)
  - Downloading intervention/image (2.7.2)
  - Installing ralouphie/getallheaders (3.0.3): Extracting archive
  - Installing psr/http-message (1.0.1): Extracting archive
  - Installing psr/http-factory (1.0.1): Extracting archive
  - Installing guzzlehttp/psr7 (2.4.3): Extracting archive
  - Installing intervention/image (2.7.2): Extracting archive
3 package suggestions were added by new dependencies, use `composer suggest` to see details.
Generating autoload files
2 packages you are using are looking for funding.
Use the `composer fund` command to find out more!
No security vulnerability advisories found
PSR-4 autoloading configured. Use "namespace Wdpf\Project12;" in src/
Include the Composer autoloader with: require 'vendor/autoload.php';

D:\xampp8110\htdocs\web3-batch-laravel\classes\class14-12112022\project12>