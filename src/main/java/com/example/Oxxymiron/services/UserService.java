//package com.example.Oxxymiron.services;
//
//import com.example.Oxxymiron.models.User;
//import com.example.Oxxymiron.repositories.UserRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserService {
//
//    @Autowired
//    private UserRepository userRepository;
//
//    @Autowired
//    private PasswordEncoder passwordEncoder;
//
//    public void save(User user) {
//        System.out.println("Сохранение пользователя: " + user.getUsername());
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
//        user.setRole("ROLE_USER");
//        userRepository.save(user);
//        System.out.println("Пользователь успешно сохранен: " + user.getUsername());
//    }
//
//    public User findByUsername(String username) {
//        return userRepository.findByUsername(username);
//    }
//}
