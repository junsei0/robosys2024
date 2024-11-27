#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

out=$(echo sin 30 | ./kadai)
[ "${out}" = 0.50 ] || ng "$LINENO"

out=$(echo cos 30 | ./kadai)
[ "${out}" = 0.87 ] || ng "$LINENO"

out=$(echo tan 30 | ./kadai)
[ "${out}" = 0.58 ] || ng "$LINENO"

out=$(echo sin 60 | ./kadai)
[ "${out}" = 0.87 ] || ng "$LINENO"

out=$(echo cos 60 | ./kadai)
[ "${out}" = 0.50 ] || ng "$LINENO"

out=$(echo tan 60 | ./kadai)
[ "${out}" = 1.73 ] || ng "$LINENO"

out=$(echo sin 0 | ./kadai)
[ "${out}" = 0.00 ] || ng "$LINENO"

out=$(echo cos 0 | ./kadai)
[ "${out}" = 1.00 ] || ng "$LINENO"

out=$(echo tan 0 | ./kadai)
[ "${out}" = 0.00 ] || ng "$LINENO"

out=$(echo sin 90 | ./kadai)
[ "${out}" = 1.00 ] || ng "$LINENO"

out=$(echo cos 90 | ./kadai)
[ "${out}" = 0.00 ] || ng "$LINENO"

out=$(echo tan 90 | ./kadai)
[ "${out}" = "Error: tan90は定義できない" ] || ng "$LINENO"

###変な入力###
out=$(echo あ | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

