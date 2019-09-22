

#!/bin/bash
if [ ! $GIT_PREVIOUS_SUCCESSFUL_COMMIT ];then
    echo "GIT_PREVIOUS_SUCCESSFUL_COMMIT is not exists."
    exit 0
else
    echo "GIT_COMMIT=[$GIT_COMMIT],GIT_PREVIOUS_SUCCESSFUL_COMMIT=[$GIT_PREVIOUS_SUCCESSFUL_COMMIT]"
    if [ $GIT_PREVIOUS_SUCCESSFUL_COMMIT == $GIT_COMMIT ];then
        echo "GIT_COMMIT is equals to GIT_PREVIOUS_SUCCESSFUL_COMMIT,skip build."
        exit -1
    else
        echo "GIT_COMMIT is not equals to GIT_PREVIOUS_SUCCESSFUL_COMMIT"
        sh build_using_xctool.sh//这里是有代码更新的条件下需要执行的代码，我这里是跑一个脚本
        exit 0
    fi
fi
