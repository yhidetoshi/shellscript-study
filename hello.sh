#!/bin/bash

# comment 
#echo "hello world"; exit 0

# 変数

# s="hello"

#echo $s
#echo "$s"
#echo "${s}"
#echo $s$s
#echo "$s $s"
#echo '$s'

#ix=10
#echo $x
#echo $x+2

#echo `expr $x + 2`
#echo `expr $x \* 2`

#readonly FILE_NAME="hello.sh"
#FILE_NAME="hello2.sh"


#Array

#a=(2 4 6)

#echo $a
#echo ${a[1]}
#echo $a[1]

#echo ${a[@]}  # 全ての要素
#echo ${#a[@]} #要素数の表示

#a=(2 4 6)
#a[2]=10

#echo ${a[@]}
#a+=(20 30)
#echo ${a[@]}

#d=(`date`)
#echo ${d[3]}

#条件式
# 正常終了(0) 

# 数値の評価

#test 1 -eq 1; echo $?  # $? は直前に行われた判定を返す Trueであれば0 それ外は1

# 数値
# -eq
# -ne
# -gt greater than (数値1 >  数値2) 
# -ge greater      (数値1 >= 数値2)
# -lt less than    (数値1 <  数値2)
# -le              (数値1 <= 数値2)

# 文字列
# =
# !=

# ファイル
# -nt (newer than)
# -ot
# -e (exit)：ファイルが存在するか 
# -d (directory) ディレクトリが存在するか

# test -e hello.sh; echo $?

# 論理演算子
# -a AND
# -o OR
# !  NOT

#test 1 -eq 1 -a 2 -eq 2; echo $?


# If文の条件

#x=70
#if test $x -gt 60  # 下記の1行と同じ(test)
# if [ $x -gt 60 ]; then
# if [ $x -gt 60 ]
#then
#  echo "ok"
#fi

#x=30
#if [ $x -gt 60 ]; then
#  echo "ok!"
#else
#elif [ $x -gt 40 ]; then
#  echo "soso"
#else
#  echo "NG"
#fi


# Case文

#signal="red"
#case $signal in
#  "red")
#    echo "stop!"
#    ;;  # 処理の終わりを意味する
#  "yellow")
#    echo "caution!"
#    ;;
#  "green")
#    echo "go!"
#    ;;
#   *)
#    echo "---"
#    ;;
#esac

# while文

#i=0
#while [ $i -lt 10 ]
#do
#   i=`expr $i + 1`
#   echo $i
#done

#i=0
#while :
#do
#   i=`expr $i + 1`

#   if [ $i -eq 3 ];  then
#      continue
#   fi

#  if [ $i -gt 10 ]; then
#     break
#   fi
#   echo $i
#done

# For

#a=(1 2 3 4 5)

#for i in 1 2 3 4 5
#for i in ${a[@]}
#for i in `seq 1 100` # sequence
#do 
#   echo $i
#done


# コマンド引数

#echo $0 #1個目の引数
#echo $1 #2個目の引数
#echo $2 #3個目の引数
# echo ${10} 

#echo $@ #引数全て表示
#echo $# #引数の数を表示

# read ユーザからの入力を受け付ける

#while :
#do
#   read key
#   echo "you pressed $key"
#   if [ $key = "end" ]; then
#      break
#   fi
#done

# File

#i=1
#while read line
#do
#  echo "$i: $line"
#  i=`expr $i + 1`
#done <$1

# 関数
 
#function hello() {
#hello() {

hello(){
  echo "hello $1 and $2"
  #i=5
  local i=5
  echo $i
}

hello Mile Tom
echo $i



