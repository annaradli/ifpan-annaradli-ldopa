#!/bin/bash
for FILE in `ls *.bam`
do
docker run -d --rm -v $PWD:/usr/working broadinstitute/picard:latest BuildBamIndex I=$FILE O=$FILE.bai
done
