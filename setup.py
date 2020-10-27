from setuptools import setup, find_packages

setup(

	# # TODO: change :vip:
	author='myname',
	version='0.0.1',
	name='templateproject',
	install_requires=['docopt'],
	author_email='template@email.org',
	url='https://example.com/your/project/url',
	description='A template Python cli app built with Nix',
	entry_points={'console_scripts': ['templateproject = templateproject.cli:main']},

	packages=find_packages(),

)
