cd /tmp
sudo apt-get update
sudo apt-get install -y wget equivs
mkdir -p ~/libicu72
cp ~/.local/share/omakub/configs/libicu72 ~/libicu72/libicu72
equivs-build ~/libicu72/libicu72
mv ./libicu72*.* ~/libicu72/
sudo dpkg -i ~/libicu72/libicu72_1.0_all.deb
wget https://github.com/PowerShell/PowerShell/releases/download/v7.4.3/powershell_7.4.3-1.deb_amd64.deb
sudo dpkg -i powershell_7.4.3-1.deb_amd64.deb
pwsh -v
cd -