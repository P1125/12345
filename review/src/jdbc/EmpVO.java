package jdbc;

import lombok.Data;


@Data // 데이터만 쓰면 다포함된다. 앞으로 롬복 사용.
//@Getter
//@Setter
//@ToString
//@AllArgsConstructor
//@NoArgsConstructor
public class EmpVO {
	private String employee_id;
	private String first_name;
	private String last_name;
	private String email;
	private String	phone_number;
	private String	hire_date;
	private String	job_id;
	private String	salary;
	private String	commission_pct;
	private String	manager_id;
	private String	department_id;
}
