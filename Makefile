pkgtest:
	python3.7 setup.py sdist bdist_wheel
	python3.7 -m twine check dist/*

clean:
	find . -name "*.pyc" -exec rm -rf {} \;
	rm -rf 	build \
			dist \
			.cache \
			bhpq.egg-info \
			.pytest_cache
