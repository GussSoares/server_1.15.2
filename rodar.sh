#!/bin/bash
# SDK Man replaced GVM. Using for Groovy, Gradle, and Maven Version Management
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
#yes | sdk install java 8.0.252.j9-adpt
./ngrok authtoken 1cMj54TxX3DSjHuDsuvZY2Av73v_79eZpYVvscMVSc7xC15YX
./ngrok tcp --region=us 25565 &

java -Xmx2G -Xms2G -jar forge-1.12.2-14.23.5.2847-universal.jar --nogui &


