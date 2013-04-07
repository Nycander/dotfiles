for file in ~/dotfiles/config/.*
do
	if [ -f "$file" ]; then
		ln -v -s -f "$file" ~/$(basename "$file")
	fi
done
