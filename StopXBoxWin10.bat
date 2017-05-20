net stop XboxNetApiSvc
net stop XblGameSave
net stop XblAuthManager

sc config "XboxNetApiSvc" start= disabled
sc config "XblGameSave" start= disabled
sc config "XblAuthManager" start= disabled
