for file in ~/dotfiles/.*
do
	if [ -f "$file" ]; then
		ln -s -f "$file" ~/$(basename "$file")
	fi
done
