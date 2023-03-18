import argparse
from os import walk

parser = argparse.ArgumentParser(description='Parse GH issue instructions')
parser.add_argument("--repository", help="the GitHub repository where the issue will live", required=True)
parser.add_argument("--batch_change_name", help="the name of the batch_change the issue is created from", required=True)
parser.add_argument("--description", help="the issue description text", required=True)
parser.add_argument("--secret", help="secret", required=True)
parser.set_defaults(reopen=False)
args = parser.parse_args()

print(args)

for (dirpath, dirnames, filenames) in walk('.'):
    for dirname in dirnames:
        print(dirname)

