clean:
	@rm -rf ~/.cache/JetBrains/PyCharm*/remote_sources/*
	@rm -rf ~/.cache/JetBrains/PyCharm*/python_stubs/*

init:
	@docker-compose -f ./.remote/docker-compose.yml up --build --force-recreate -d

venv:
	@sshpass -p password ssh -t root@localhost -p 9922 "zsh"

coverage:
	@pytest --cov
	@coverage html

test:
	@pytest
