package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n, k, r int
	var nums []int
	scanner := bufio.NewScanner(os.Stdin)
	{
		scanner.Scan()
		line := scanner.Text()
		nAndK := strings.Split(line, " ")
		n, _ = strconv.Atoi(nAndK[0])
		k, _ = strconv.Atoi(nAndK[1])

		scanner.Scan()
		line = scanner.Text()
		nums = Map(strings.Split(line, " "), func(t string) int {
			num, _ := strconv.Atoi(t)
			return num
		})
		r = len(nums)
	}

	var components []int
	for i := 1; i <= r; i++ {
		components = append(components, i)
	}

	maxBaisu := calcMaxBaisu(components, r, k)
	var baisus []int
	for i := maxBaisu; i > 0; i = i - k {
		baisus = append(baisus, i)
	}

	coms := combinations(components, r)

	var temp [][]int
	for _, com := range coms {
		var sum int
		if len(temp) >= n {
			continue
		}
		for _, c := range com {
			sum += c
		}
		if isBaisu(sum, k) {
			temp = append(temp, com)
		}
	}

	var ans [][]int
	for _, ints := range temp {
		perms := permutations(ints)
		ans = append(ans, perms...)
	}

	for i, an := range ans {
		if i == 0 {
			continue
		}
		last := ans[i-1]
		for j, numInLast := range last {
			numInThis := an[j]
			if numInThis > numInLast {
				Delete(ans, i, i)
			}
		}
	}

	// ansを辞書順にソート
	sort.Slice(ans, func(i, j int) bool {
		inum := Map(ans[i], func(t int) string {
			s := strconv.Itoa(t)
			return s
		})
		iStr := strings.Join(inum, "")

		jnum := Map(ans[i], func(t int) string {
			s := strconv.Itoa(t)
			return s
		})
		jStr := strings.Join(jnum, "")

		return iStr < jStr
	})

	ans2 := ans
	for i := range ans {
		an := ans[i]
		for j := range an {
			a := an[j]
			if a > j+1 {
				fmt.Println("delete", a, j, an)
				ans2 = Delete(ans2, i, i+1)
			}
		}
	}

	fmt.Println(n, k, temp, "========", ans2)
}

// Delete removes the elements s[i:j] from s, returning the modified slice.
// Delete panics if j > len(s) or s[i:j] is not a valid slice of s.
// Delete is O(len(s)-i), so if many items must be deleted, it is better to
// make a single call deleting them all together than to delete one at a time.
// Delete zeroes the elements s[len(s)-(j-i):len(s)].
func Delete[S ~[]E, E any](s S, i, j int) S {
	_ = s[i:j:len(s)] // bounds check

	if i == j {
		return s
	}

	oldlen := len(s)
	s = append(s[:i], s[j:]...)
	clear(s[len(s):oldlen]) // zero/nil out the obsolete elements, for GC
	return s
}

// permutationsは、与えられた配列のすべての順列を生成します。
func permutations(arr []int) [][]int {
	var result [][]int
	seen := make(map[string]struct{})
	var permute func([]int, int)
	permute = func(a []int, n int) {
		if n == 1 {
			perm := make([]int, len(a))
			copy(perm, a)
			key := fmt.Sprint(perm)
			if _, exists := seen[key]; !exists {
				seen[key] = struct{}{}
				result = append(result, perm)
			}
		} else {
			for i := 0; i < n; i++ {
				permute(a, n-1)
				if n%2 == 1 {
					a[0], a[n-1] = a[n-1], a[0]
				} else {
					a[i], a[n-1] = a[n-1], a[i]
				}
			}
		}
	}
	permute(arr, len(arr))
	return result
}

func calcMaxBaisu(components []int, r, k int) int {
	m := components[len(components)-1] * r
	for i := m; i > 0; i-- {
		if isBaisu(i, k) {
			return i
		}
	}
	panic("")
}

func Map[T, U any](ts []T, f func(T) U) []U {
	us := make([]U, len(ts))
	for i := range ts {
		us[i] = f(ts[i])
	}
	return us
}

func isBaisu(num, target int) bool {
	return num%target == 0
}

// combinationsは、n個の要素からk個を選ぶ組み合わせを生成します。
func combinations(arr []int, k int) [][]int {
	var result [][]int
	var comb func(start int, chosen []int)
	comb = func(start int, chosen []int) {
		if len(chosen) == k {
			combination := make([]int, k)
			copy(combination, chosen)
			result = append(result, combination)
			return
		}
		for i := start; i < len(arr); i++ {
			comb(i, append(chosen, arr[i]))
		}
	}
	comb(0, []int{})
	return result
}
