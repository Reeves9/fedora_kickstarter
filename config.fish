if status is-interactive
	starship init fish | source
	set -gx fish_greeting
    # Commands to run in interactive sessions can go here
end
