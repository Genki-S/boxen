class people::genki_s {
	# osx
	include osx::global::enable_keyboard_control_access
	include osx::dock::autohide
	include osx::finder::show_external_hard_drives_on_desktop
	include osx::finder::show_mounted_servers_on_desktop
	include osx::finder::show_removable_media_on_desktop
	include osx::finder::unhide_library
	include osx::finder::show_hidden_files
	include osx::universal_access::ctrl_mod_zoom
	include osx::software_update
	include osx::keyboard::capslock_to_control

	include iterm2::dev
	include iterm2::colors::solarized_dark

	# homebrew packages are managed in dotfiles/Brewfile

	$home = "/Users/${::boxen_user}"
	$dotfiles = "${home}/dotfiles"

	repository { $dotfiles:
		source => 'Genki-S/dotfiles'
	}
}
