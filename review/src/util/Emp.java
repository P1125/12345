package util;

import lombok.Data;

@Data
public class Emp {
		int id;
		String name;
		String dept;


		public Emp(int id, String name, String dept) {
			super();
			this.id = id;
			this.name = name;
			this.dept = dept;
		}

		@Override
		public String toString() {
			return "Emp [id=" + id + ", name=" + name + ", dept=" + dept + "]";
		}

	}
