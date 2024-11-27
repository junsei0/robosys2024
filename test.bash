#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

out=$(echo sin 30| ./kadai)
[ "${out}" = 0.50 ] || ng "$LINENO"

###変な入力###
out=$(echo あ | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

