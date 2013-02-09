#!/usr/bin/python
import csv
contents = []
with open('population.csv', 'rb') as f:
	reader = csv.reader(f)
	for row in reader:
		row.pop(0)
		contents.append(row)

print contents

with open("population_filterd.csv", "wb") as f:
	writer = csv.writer(f)
	writer.writerows(contents)
