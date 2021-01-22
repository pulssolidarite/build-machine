# Install for the AppImage build machine

Run the `run-me.sh` script for fast install of :
- dotnet SDK
- mono
- nodejs

## Create new AppImage

Update version number in package.json

`$> npm run-script build`

`$> npm run dist`

The new appImage is saved in `build/`

## Update arcades

`$> npm run deploy`


## Optional : Project compilation

For generate css : 
Go to src > renderer > assets > css and execute :  
`$> ./dart-sass/sass ./sass/theme.scss ./theme.css` to generate or edit css. 

## Code Singing using certificate

Guide : https://simulatedgreg.gitbooks.io/electron-vue/content/en/using-electron-builder.html#auto-updating

`$> openssl genrsa 1024 > project.key`
`$> openssl req -new -key project.key > project.csr`
`$> openssl x509 -in project.csr -out project.crt -req -signkey project.key`

move project.crt in project folder
