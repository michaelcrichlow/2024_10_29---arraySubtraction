package test

import "core:fmt"
import "core:slice"
print :: fmt.println

main :: proc() {

	print(arraySubtraction([]int{1, 2, 3, 4, 5}, []int{2, 3, 6}))
	print(arraySubtraction([]int{1, 1, 1, 2, 2, 3, 3, 3, 4}, []int{2, 5, 6, 7}))

	free_all(context.temp_allocator)

	// OUTPUT:
	// [1, 4, 5]
	// [1, 3, 4]
}


arraySubtraction :: proc(l1: []int, l2: []int) -> []int {
	local_array := make([dynamic]int, allocator = context.temp_allocator)

	for val in l1 {
		if !slice.contains(l2[:], val) {
			append(&local_array, val)
		}
	}

	local_set := set(local_array[:], context.temp_allocator)
	another_array := list(local_set, context.temp_allocator)
	sort(another_array[:])

	return another_array[:]
}
