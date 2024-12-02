#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Junsei Iimori <craftboy0228@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at line ${1}
	res=1
}

res=0

###変な入力###
out=$(echo  | ./random_word )
[ $? -eq 1 ] || ng ${LINENO}

out=$(echo a | ./random_word )
[ $? -eq 1 ] || ng ${LINENO}

out=$(echo あ | ./random_word )
[ $? -eq 1 ] || ng ${LINENO}

out=$(echo 0 | ./random_word )
[ $? = 0 ] || ng ${LINENO}

out=$(echo -1 | ./random_word )
[ $? -eq 1 ] || ng ${LINENO}

out=$(echo 15 | ./random_word )
[ $? -eq 1 ] || ng ${LINENO}

[ "${res}" -eq 0 ] && echo OK
exit $res


