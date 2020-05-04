#!/bin/bash

# Establish connection to Pachyderm server.
# Execute main-create-pipelines.sh, and wait until its execution is complete before proceeding.

### ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ###
pachctl get file pachyderm-demo-images@master:liberty.png  > pachyderm-demo-images-liberty.png
pachctl get file pachyderm-demo-images@master:AT-AT.png    > pachyderm-demo-images-AT-AT.png
pachctl get file pachyderm-demo-images@master:kitten.png   > pachyderm-demo-images-kitten.png

pachctl get file pachyderm-demo-edges@master:liberty.png   > pachyderm-demo-edges-liberty.png
pachctl get file pachyderm-demo-edges@master:AT-AT.png     > pachyderm-demo-edges-AT-AT.png
pachctl get file pachyderm-demo-edges@master:kitten.png    > pachyderm-demo-edges-kitten.png
pachctl get file pachyderm-demo-montage@master:montage.png > pachyderm-demo-montage-montage.png

