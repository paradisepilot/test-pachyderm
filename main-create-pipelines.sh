#!/bin/bash

# Establish connection to Pachyderm server.

### ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ###
pachctl create repo pachyderm-demo-images

pachctl put file pachyderm-demo-images@master:liberty.png -f http://imgur.com/46Q8nDz.png
pachctl put file pachyderm-demo-images@master:AT-AT.png   -f http://imgur.com/8MN9Kg0.png
pachctl put file pachyderm-demo-images@master:kitten.png  -f http://imgur.com/g2QnNqa.png

### ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ###
pachctl create pipeline -f pachyderm-demo-edges.json
pachctl create pipeline -f pachyderm-demo-montage.json

### ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ###

