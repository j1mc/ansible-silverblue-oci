if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.config/ansible-silverblue-oci/flatpak-firstboot-done; then
        mkdir -p "$HOME"/.config/autostart
        cp -f /etc/skel.d/.config/autostart/flatpak-setup.desktop "$HOME"/.config/autostart/flatpak-setup.desktop
    fi
fi
