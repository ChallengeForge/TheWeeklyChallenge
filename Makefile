run:
	plackup PWC/bin/app.psgi

migrate:
	cd database && cd migration && perl migrate.pm