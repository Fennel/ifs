point
	var
		vector/v

	New(x, y)
		v = new /vector(x, y)

	proc
		get_x()
			return v.ComponentX()

		get_y()
			return v.ComponentY()

		transform(vector/transform_vector)
			v.AddVector(transform_vector)

		paint(client/client)
			var/obj/O = new
			//O.screen_loc("[v.ComponentX()]:[v.ComponentY()]")

			client.screen += O