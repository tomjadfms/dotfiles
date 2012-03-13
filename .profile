# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM suggests using gcc instead of llvm (which Apple now symlinks gcc to)
export CC=gcc-4.2

for file in ~/.{private,vars,paths,aliases,zprofile,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file
