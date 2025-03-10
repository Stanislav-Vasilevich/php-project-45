install: # локальная установка composer
	composer install

brain-games: # запустить файл bin/brain-games.php
	./bin/brain-games

validate: # избегаем добавления пакетов в основной каталог packagist
	composer validate

	.DEFAULT_GOAL := build-run

setup: # скопировал из чужого проекта
	./gradlew wrapper --gradle-version 8.5

clean:
	./gradlew clean

build:
	./gradlew clean build

install:
	./gradlew clean install

run-dist:
	./build/install/java-package/bin/java-package

run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestReport

lint:
	./gradlew checkstyleMain

check-deps:
	./gradlew dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build