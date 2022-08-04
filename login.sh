#!/bin/bash

source ./.env

# login atcoder-cli
expect -c "
    set timeout 5
    spawn acc login
    expect \"? username: \"
    send \"${ATCODER_USERNAME}\n\"
    expect \"? password: \"
    send \"${ATCODER_PASSWORD}\n\"
    expect \"$\"
    exit 0
"

# login online-judge-tool
oj login -u ${ATCODER_USERNAME} -p ${ATCODER_PASSWORD} https://beta.atcoder.jp/

# acc settings
cp -r ./cpp `acc config-dir`
acc config default-template cpp
acc config default-task-choice all
acc config default-test-dirname-format test
acc config default-contest-dirname-format /workspaces/atcoder/contests/{ContestID}
