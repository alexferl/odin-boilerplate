package app

import "core:fmt"

hello :: proc(name: string, allocator := context.allocator) -> string {
	return fmt.aprintf("Hello, %s!", name, allocator = allocator)
}
