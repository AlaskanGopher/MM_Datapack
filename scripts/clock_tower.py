import argparse, re

parser = argparse.ArgumentParser()

parser.add_argument("inputFile")

args = parser.parse_args()

def main():
	with open(args.inputFile, 'r') as f:
		text = f.read()

		oldPosition = list(map(int, re.search(r"(?<=OLD WORLD TOWER CENTER \()-?\d+,\s?-?\d+,\s?-?\d+(?=\))", text).group(0).split(',')))
		newPosition = list(map(int, re.search(r"(?<=NEW WORLD TOWER CENTER \()-?\d+,\s?-?\d+,\s?-?\d+(?=\))", text).group(0).split(',')))

		textCommands = text.split("BEGIN")[1].split('\n')
		
		MCCommands = []
		for command in textCommands:
			if command == '': continue
			if command == '# END': break
			if command.startswith("# command:") or command.startswith("# chain command:"):
				MCCommand = re.search(r".*:\s*/(.*)", command).group(1)
				if MCCommand.startswith("fill"):
					regexMatch = re.search(r"fill (-?\d+\s-?\d+\s-?\d+) (-?\d+\s-?\d+\s-?\d+) (\S+)", MCCommand)
					pos1 = list(map(int, regexMatch.group(1).split(' ')))
					pos2 = list(map(int, regexMatch.group(2).split(' ')))
					newPos1 = []
					newPos2 = []
					for i in range(3):
						newPos1.append(str(pos1[i] + (newPosition[i] - oldPosition[i])))
						newPos2.append(str(pos2[i] + (newPosition[i] - oldPosition[i])))
					MCCommands.append(f"fill {' '.join(newPos1)} {' '.join(newPos2)} {regexMatch.group(3)}")
				elif MCCommand.startswith("clone"):
					regexMatch = re.search(r"clone (-?\d+\s-?\d+\s-?\d+) (-?\d+\s-?\d+\s-?\d+) (-?\d+\s-?\d+\s-?\d+)", MCCommand)
					pos1 = list(map(int, regexMatch.group(1).split(' ')))
					pos2 = list(map(int, regexMatch.group(2).split(' ')))
					pos3 = list(map(int, regexMatch.group(2).split(' ')))
					newPos1 = []
					newPos2 = []
					newPos3 = []
					for i in range(3):
						newPos1.append(str(pos1[i] + (newPosition[i] - oldPosition[i])))
						newPos2.append(str(pos2[i] + (newPosition[i] - oldPosition[i])))
						newPos3.append(str(pos3[i] + (newPosition[i] - oldPosition[i])))
					MCCommands.append(f"clone {' '.join(newPos1)} {' '.join(newPos2)} {' '.join(newPos3)}")
			elif command.startswith("# structure block:"):
				regexMatch = re.search(r"structure block:\s*(\S+) relative (-?\d+\s-?\d+\s-?\d+) @ (-?\d+\s-?\d+\s-?\d+)", command)
				structureBlockPos = list(map(int, regexMatch.group(3).split(' ')))
				structureRelativePos = list(map(int, regexMatch.group(2).split(' ')))
				newStructurePos = []
				for i in range(3):
					newStructurePos.append(str(structureBlockPos[i] + structureRelativePos[i] + (newPosition[i] - oldPosition[i])))
				print(newStructurePos)
				MCCommands.append(f"place template {regexMatch.group(1)} {' '.join(newStructurePos)}")
			elif command.endswith("REPEATERS"):
				regexMatch = re.search(r"(\d) (\d)tick", command)
				MCCommands.append(delay(2*int(regexMatch.group(1))*int(regexMatch.group(2))))
		f.close()
	with open(args.inputFile, 'a') as f:
		f.write("\n# Auto-Generated\n" + '\n'.join(MCCommands))
		f.close()

def delay(n):
	print(n)
	return str(n)

if __name__ == "__main__":
	main()