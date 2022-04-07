package student;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Student {
	private String schoolName;
	private String name;
	private int studentYear;
	private String department;
	private String grade;
	
}
