## DOST Unified Laboratory Information Management System ##
## Resource Management Module ##

###RELEASE NOTES###

Only the files created or modified for the use of Inventory and Equipment Modules are present.

Notable files/directories that differ from main ULIMS repository:

1. This README.md file

2. protected/config/main.php modified at line 63 to include 'ext.gen' extension as generatorPath
    for gii. Contains Api Generator to generate controllers that has endpoints for REST API(Mobile-use).

3. protected/extensions/gii API code generator for Gii. Has instructions on its index page in gii. 
    Generated code is commented w/ instructions

4. protected/extensions/spout extension to be used for reading Initial Inventory Forms(xlsx files).

5. protected/modules/inventory - Inventory Module. Tracks Chemical Containers and its consumption, 
    location, supplier, manufacturer, etc...

Resource Management Module is comprised of 2(two) yii 1.1 modules:

- Inventory Module: Physical inventory of chemical stocks, suppliers and manufacturers and locations. 
  Including features for stock reordering rules and container barcode sticker printouts.

- Equipment Module: Equipment inventory and maintenance management module. (to be started)

#### INSTALLATION NOTES ####

Located in protected/modules/inventory are 3 sql files (inventory, up, down). ulimsinventory.sql is the
DDL for the inventory db. up.sql include changes to ulimsportal db to gain access for inventory module.
No new user types for inventory module. just add '6' or the id of the inventory module record in accesslist
table in the accesslist2 column in profiles table.

#### ADDITIONAL ####
NO rights yet but use the admin account just for now (for development), once finished we will direct every controller to using the rights module(for testing purpose). No rights yet so theres no dump files for up and down.sql yet (user access purpose) but it will be same as what the installation notes above states. Also lets start practicing using comments so we will know who made whom, or any changes to code.

Kindly fork and clone this repo to a new folder let call it "Ulim Mod" on your personal machine (separate folder from dev files). the folder will be kept as your personal file. example if youre working on inventory module and you have your ulims file on your htdocs it is your dev files, after you finish testing certain feature/s and you want to upload it to repo, just copy the file/s from your dev file  to your Ulim Mod folder then you can issue a pull request with my master repo from there.

##### TEAM #####

| Name                   | Skype          | Github         |
| ---------------------- | -------------- | -------------- |
| Bergel Cutara          | berujiru       | berujiru       |
| other name             |                |                |
