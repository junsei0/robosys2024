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
[ "${out}" = "Input Error" ] || ng ${LINENO}

out=$(echo a | ./kadai)
[ "${out}" = "Input Error" ] || ng ${LINENO}

out=$(echo あ | ./kadai)
[ "${out}" = "Input Error" ] || ng ${LINENO}

out=$(echo 0 | ./kadai)
[ "${out}" = "Error: 指定した文字数の単語はない" ] || ng ${LINENO}

out=$(echo -1 | ./kadai)
[ "${out}" = "Error: 指定した文字数の単語はない" ] || ng ${LINENO}

out=$(echo 15 | ./kadai)
[ "${out}" = "Error: 指定した文字数の単語はない" ] || ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res


