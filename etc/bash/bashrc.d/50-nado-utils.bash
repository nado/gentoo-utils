alias cpa="/usr/bin/rsync --info=progress2 -ahvr"

alias ls="${BASH_ALIASES[ls]:-ls} -hN"
alias ll="${BASH_ALIASES[ls]:-ls} -l"
alias watch="${BASH_ALIASES[watch]:-watch} -t"
alias cat="bat -pp"

tailc() {
	tail -f "$@" | ccze -A
}

emerge() {
	/usr/bin/emerge "$@"
	local ret=$?

	while getopts ":p" opt; do
		case ${opt} in
			p)
				return $ret
				;;
		esac
	done

	/etc/cron.daily/motd-update
	return $ret
}
