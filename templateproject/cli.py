"""templateproject

Usage:
  templateproject incr [options] <number>
  templateproject (-h | --help)
  templateproject --version

Options:
  -x <number>, --incrby <number>   How many numbers will be incresed [default: 1].
  -h --help                        Show this screen.
  --version                        Show the version.

"""
from docopt import docopt

def main():
	args = docopt(__doc__, version='0.0.1')
	if args['incr']:
		print(int(args['<number>']) + int(args['--incrby']))

if __name__ == '__main__':
	main()

