package com.example.Studentmanage1.Controller;

import com.example.Studentmanage1.Model.PathModel;
import com.example.Studentmanage1.Repository.PathRepository;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PathController {

    @Autowired
    private PathRepository repo;

    // ✅ LOGIN - GET
    @GetMapping("/login")
    public String loginPage() {
        return "login"; // login.jsp
    }

    // ✅ LOGIN - POST
    @PostMapping("/login")
    public String doLogin(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (("admin".equals(username) && "admin@123".equals(password)) ||
            ("user".equals(username) && "user@123".equals(password))) {
            return "redirect:/"; // Redirect to form
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    // ✅ SHOW STUDENT FORM
    @GetMapping("/")
    public String showHomeForm() {
        return "index"; // index.jsp
    }

    // ✅ ADD STUDENT
    @PostMapping("/students/add")
    public String submit(@ModelAttribute PathModel student, Model model) {
        repo.save(student);
        return "redirect:/students/view"; // redirect to view.jsp
    }

    // ✅ VIEW ALL STUDENTS
    @GetMapping("/students/view")
    public String viewStudents(Model model) {
        List<PathModel> students = repo.findAll();
        model.addAttribute("students", students);
        return "view"; // view.jsp
    }

    // ✅ EDIT STUDENT - SHOW FORM
    @GetMapping("/students/edit/{id}")
    public String editStudent(@PathVariable int id, Model model) {
        PathModel student = repo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid student ID: " + id));
        model.addAttribute("student", student);
        return "edit"; // edit.jsp
    }

    // ✅ UPDATE STUDENT
    @PostMapping("/students/update")
    public String updateStudent(@ModelAttribute PathModel student) {
        repo.save(student); // JPA will perform update if ID is present
        return "redirect:/students/view";
    }

    // ✅ DELETE STUDENT
    @GetMapping("/students/delete/{id}")
    public String deleteStudent(@PathVariable int id) {
        repo.deleteById(id);
        return "redirect:/students/view";
    }
  
}
