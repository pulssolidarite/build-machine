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
