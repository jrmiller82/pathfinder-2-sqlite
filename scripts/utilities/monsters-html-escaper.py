import html

def main():

    # read in the file
    with open("../data/yaml/monsters.yaml", 'r') as content_file:
        content = content_file.read()
    # print(html.unescape(content))
    with open("../data/yaml/monsters-fixed.yaml", 'w') as outfile:
        outfile.write(html.unescape(content))

if __name__ == "__main__":
    main()
