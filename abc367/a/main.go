package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	line := scanner.Text()
	nums := strings.Split(line, " ")
	scream, _ := strconv.Atoi(nums[0])
	sleep, _ := strconv.Atoi(nums[1])
	wakeup, _ := strconv.Atoi(nums[2])

	if sleep < wakeup {
		if wakeup <= scream {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		if wakeup <= scream && scream <= sleep {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
