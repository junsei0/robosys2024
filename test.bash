#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

out=$(echo "1 + 1"| ./kadai)
[ "${out}" = 2 ] || ng "$LINENO"

out=$(echo "8 - 3"| ./kadai)
[ "${out}" = 5 ] || ng "$LINENO"

out=$(echo "2 * 5"| ./kadai)
[ "${out}" = 10 ] || ng "$LINENO"

out=$(echo "10 / 4"| ./kadai)
[ "${out}" = 2.5 ] || ng "$LINENO"

###変な入力###
out=$(echo "a + 1" | ./calculator)
[ "${out}" = "Error: 無効な操作" ] || ng ${LINENO}

out=$(echo "1 + a" | ./calculator)
[ "${out}" = "Error: 無効な操作" ] || ng ${LINENO}

out=$(echo "1 a 1" | ./calculator)
[ "${out}" = "Error: 無効な操作" ] || ng ${LINENO}

out=$(echo "1 + 1 + 1" | ./calculator)
[ "${out}" = "Error" ] || ng ${LINENO}

out=$(echo "1 / 0" | ./calculator)
[ "${out}" = "Error: ゼロ除算" ] || ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res


