package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

var (
	regex = regexp.MustCompile(`\.?0*$`)
)

func main() {
	var n, k int
	var nums []int
	{
		scanner := bufio.NewScanner(os.Stdin)
		scanner.Scan()
		line := scanner.Text()
		nAndK := strings.Split(line, " ")
	}
	nums := strings.Split(line, " ")
	x = nums[0]

	ans := strings.TrimSuffix(x, "0")
	ans = regex.ReplaceAllString(ans, "")
	fmt.Println(ans)
}
