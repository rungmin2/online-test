package goodee.gdj58.online.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import goodee.gdj58.online.vo.Student;

@Mapper
public interface StudentMapper {
	// student
	int updateStudentPw(Map<String, Object> paramMap);
	Student login(Student student);
	// employee/student
	public String selectStudentId(String studentId);
	int studentCount(String searchWord);
	int deleteStudent(int studentNo);
	int insertStudent(Student student);
	List<Student> selectStudentList(Map<String, Object> paramMap);
}
