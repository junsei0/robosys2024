#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

###変な入力###
out=$(echo  | ./kadai)
[ "$?" = 1]	|| ng ${LINENO}
[ "${out}" = "Input Error" ] || ng ${LINENO}

out=$(echo 12 | ./kadai)
[ "${out}" = "Error: 指定した文字数の単語はない" ] || ng ${LINENO}
[ "$?" = 1]	|| ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res


