# AppYoutube
MesNotes

Resources and Tools used:

https://developers.google.com/youtube/v3/docs
https://proxyman.io
https://github.com
https://www.bitrise.io/features/ios-features?utm_source=sponsorship_youtube&utm_medium=cpc&utm_campaign=codewithchris&utm_content=codewithchris2020_youtubeappseries

concepts you’ll learn

	✓	Networking
	⁃	YouTube data API v3, iOS networking, JSON parsing

	✓	User Interface
	⁃	Tableviews, Custom Table View Cells, Webviews, Hugging priority, TextViews, How to embed and view YT videos

	✓	Swift
	⁃	Structs, Date formatting, Custom protocol delegates, Best practice of using a constants file

	✓	Tools
	⁃	GitHub and Bitrise


To Do In Xcode:
	1.	Créer Constants.Swift avec les KEy AccesAPI etc
	⁃	PlayListItem From YouTube API=>
	⁃	https://developers.google.com/youtube/v3/docs/playlistItems/list?apix_params=%7B%22part%22%3A%5B%22snippet%22%5D%2C%22playlistId%22%3A%22PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua%22%7D
	2.	Creer son app dans googleAPI=> add "YouTube Data API v3"=> creer Credentilas for API "AIzaSyAjPSnqmTCaiQ8jsfZgGAqLgHqvBzJP7zs" add to my Constants.swift
	3.	Creer la classe sous xcode pour communiquer avec API
	4.	Creer model Video
	5.	Connectez a bitrise & Proxyman => code 200 
	6.	Parsing Json / copy the json file and check it on jsonlint.com
	⁃	chercher dans le json, les key que nous avons besoin pour notre model(id/title/publisehd...)
		=> use Codable Protocole (traduit automatiquement le fichier json vers le model)

https://www.youtube.com/playlist?list=PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua
*/
