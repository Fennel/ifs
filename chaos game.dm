client
	verb
		start(n as num, r as num)
			//triangle

			var/triangle/t = new(new /point(1,1), new /point(150,300), new /point(300,1))
			var/this_n = 1

			//initial point
			var/point/this_point = null
			var/point/vertex = null
			var/vector/move_vector = null
			while(this_n < n)
				vertex = t.get_random_vertex()
				this_point = t.get_random_point()
				move_vector = new /vector(vertex.get_x() - this_point.get_x(), vertex.get_y() - this_point.get_y())
				move_vector.Scale(r)

				//transform. uses vector.AddVector
				this_point.transform(move_vector)
				//paint to screen!
				this_point.paint(src)

				//next random point in triangle
				this_n++

