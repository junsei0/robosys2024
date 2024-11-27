#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

out=$(echo sin 30| ./kadai)
[ "${out}" = 0.5 ] || ng "$LINENO"

out=$(echo cos 60| ./kadai)
[ "${out}" = 0.5 ] || ng "$LINENO"

out=$(echo tan 45| ./kadai)
[ "${out}" = 1.0 ] || ng "$LINENO"

out=$(echo sin 0| ./kadai)
[ "${out}" = 0.0 ] || ng "$LINENO"

out=$(echo cos 0| ./kadai)
[ "${out}" = 1.0 ] || ng "$LINENO"

out=$(echo tan 0| ./kadai)
[ "${out}" = 0.0 ] || ng "$LINENO"

out=$(echo sin 90| ./kadai)
[ "${out}" = 1.0 ] || ng "$LINENO"

out=$(echo cos 90| ./kadai)
[ "${out}" = 0.0 ] || ng "$LINENO"

out=$(echo sin 60\ncos 30\n | ./kadai)
[ "${out}" = 1.73 ] || ng "$LINENO"

out=$(echo cos 30\ntan 45 | ./kadai)
[ "${out}" = 1.87 ] || ng "$LINENO"

out=$(echo sin 30\ntan 45 | ./kadai)
[ "${out}" = 1.5 ] || ng "$LINENO"

out=$(echo sin 30\ncos 60\ntan 45 | ./kadai)
[ "${out}" = 2.0 ] || ng "$LINENO"

###変な入力###
out=$(echo あ | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo | ./kadai)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin \n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo cos a\n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo tan あ\n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin 30\ncos \n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo cos a\ntan 45\n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin あ\ntan a\n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin 30\ncos 30\ntan \n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin 30\ncos a\ntan \n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

out=$(echo sin あ\ncos a\ntan \n | ./kadai)
[ "$?" = 1 ]	  || ng "$LINENO"
[ "${out}" = "Input Error" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

