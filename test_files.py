import sys

if __name__ == "__main__":
    path_file = sys.argv[1]
    for l in open(path_file).readlines():
        print(l)
        l = l.strip()
        open(l).close()
