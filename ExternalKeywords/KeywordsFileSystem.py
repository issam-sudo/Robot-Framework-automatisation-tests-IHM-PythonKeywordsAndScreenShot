import os
import urllib.request


def createfolder(foldername):
    if  os.path.exists('C:/Users/issam/Desktop/robot framework/CreateKeywordsPython/Resources/'+foldername) == 'false':
        os.mkdir("C:/Users/issam/Desktop/robot framework/CreateKeywordsPython/Resources/"+foldername)


def savefilebyurl(foldername, filename):
    urllib.request.urlretrieve("https://moisio.fr/wp-content/uploads/2019/12/Robot-Framework-2000x1200.jpg",
                               "C:/Users/issam/Desktop/robot framework/CreateKeywordsPython/Resources/"+foldername+"/"+filename)

