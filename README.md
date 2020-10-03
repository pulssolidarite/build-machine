# Install for the AppImage build machine

Run the `run-me.sh` script for fast install of :
- dotnet SDK
- mono
- nodejs

## Create new AppImage

Update version number in package.json

`npm run-script build`

`npm run dist`

The new appImage is saved in `build/`

## Update arcades

`npm run deploy`


## Optional : Project compilation

For generate css : 
Go to src > renderer > assets > css and execute :  
`./dart-sass/sass ./sass/theme.scss ./theme.css` to generate or edit css. 
