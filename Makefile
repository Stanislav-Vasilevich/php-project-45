install: # локальная установка composer
	composer install

brain-games: # запустить файл bin/brain-games.php
	./bin/brain-games

validate: # избегаем добавления пакетов в основной каталог packagist
	composer validate