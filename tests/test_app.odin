package test_app

import "core:testing"
import app "../"

@(test)
test_hello :: proc(t: ^testing.T) {
	str := app.hello("World", context.temp_allocator)
	testing.expect_value(t, str, "Hello, World!")
}
