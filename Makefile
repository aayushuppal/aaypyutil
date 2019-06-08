pkgtest:
	python3.7 setup.py sdist bdist_wheel
	python3.7 -m twine check dist/*

clean:
	find . -depth -name "*.pyc" -exec rm -rf  {} \;
	rm -rf 	build \
			dist \
			.cache \
			*egg-info \
			.pytest_cache \
			.mypy_cache

pc:
	pre-commit run --all-files

is:
	isort -rc .
