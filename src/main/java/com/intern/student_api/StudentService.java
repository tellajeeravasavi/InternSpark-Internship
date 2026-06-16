package com.intern.student_api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class StudentService {

    @Autowired
    private StudentRepository repo;

    public List<Student> getAllStudents() { return repo.findAll(); }

    public Optional<Student> getById(Long id) { return repo.findById(id); }

    public Student save(Student s) { return repo.save(s); }

    public void delete(Long id) { repo.deleteById(id); }

    public Student update(Long id, Student newData) {
        Student s = repo.findById(id)
                .orElseThrow(() -> new RuntimeException("Student not found"));
        s.setName(newData.getName());
        s.setEmail(newData.getEmail());
        s.setCourse(newData.getCourse());
        return repo.save(s);
    }
}