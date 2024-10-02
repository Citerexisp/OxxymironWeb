//package com.example.Oxxymiron.controllers;
//
//import com.example.Oxxymiron.models.User;
//import com.example.Oxxymiron.services.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import jakarta.validation.Valid;
//
//@Controller
//public class RegistrationController {
//
//    private final UserService userService;
//
//    @Autowired
//    public RegistrationController(UserService userService) {
//        this.userService = userService;
//    }
//
//    @GetMapping("/register")
//    public String showRegistrationForm(Model model) {
//        System.out.println("Открытие формы регистрации");
//        model.addAttribute("user", new User());
//        return "register";
//    }
//
//    @PostMapping("/register")
//    public String registerUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {
//        System.out.println("Попытка регистрации пользователя: " + user.getUsername());
//
//        if (result.hasErrors()) {
//            System.out.println("Ошибки валидации: " + result.getAllErrors());
//            return "register"; // Возврат на форму регистрации при наличии ошибок
//        }
//
//        if (userService.findByUsername(user.getUsername()) != null) {
//            model.addAttribute("error", "Пользователь с таким именем уже существует.");
//            return "register";
//        }
//
//        userService.save(user);
//        System.out.println("Пользователь успешно сохранен: " + user.getUsername());
//        return "redirect:/login"; // или return "login"; для отладки
//    }
//}
//
