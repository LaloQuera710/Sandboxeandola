#!/bin/zsh
strdev@cyberservices.com Laloska1@@1998
joedfuva710@gmail.com Laloska1@@1998
2zb4W7CDac
cd ///
set ./**
see ./**
git clone http://GitHub.com/LaloQuera710/sandboxeandola 
cd sandboxeandola
mousepad 80-nethunter.sh
nmtui-connect 
passed
nmcli d wifi connect ARRIS-7F62 password X3RFVV9JJCCXKTK4 hidden true 
nmcli d wifi connect MEGACABLE-2.4G-1FAB password 2zb4W7CDac hidden true
nmcli d wifi connect ARRIS-D4A2 password CAFA93DEC9A4A79E hidden true
nmcli d wifi connect MEGACABLE-2.4G-1FAB password 2zb4W7CDac hidden true
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
pulseaudio --dump-modules --daemonize=true --load=module-always-source --start
#!/sbin/sh
#
# ADDOND_VERSION=2
#
# /system/addon.d/80-nethunter.sh
# During a system upgrade, this script backs up NetHunterStore client and privext,
# /system is formatted and reinstalled, then the files are restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/NetHunterStore.apk
app/NetHunterStore/NetHunterStore.apk
app/NetHunter/NetHunter.apk
app/NetHunter-Terminal/NetHunterTerminal.apk
app/NetHunter-VNC/NetHunterVNC.apk
etc/permissions/permissions_com.offsec.nethunter.store.privileged.xml
priv-app/NetHunterStorePrivilegedExtension.apk
priv-app/NetHunterStorePrivilegedExtension/NetHunterStorePrivilegedExtension.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
ss && sudo -i
