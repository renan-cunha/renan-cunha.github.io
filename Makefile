publish:
	hugo
	rsync -av --delete --exclude '.git' --exclude '.gitignore' --exclude 'README.md' public/ ../renan-cunha.github.io
