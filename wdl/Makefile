validate:
	java -jar ../../../bin/womtool-47.jar validate ./angus-tophat-dmel.wdl

inputs:
	java -jar ../../../bin/womtool-47.jar inputs ./angus-tophat-dmel.wdl

run:
	java -jar ../../../bin/cromwell-47.jar run angus-tophat-dmel.wdl  -i ./inputs.json

.PHONY: validate run inputs
