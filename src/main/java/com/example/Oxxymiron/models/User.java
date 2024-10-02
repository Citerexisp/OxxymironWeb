//package com.example.Oxxymiron.models;
//
//import jakarta.persistence.*;
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//import jakarta.validation.constraints.Size;
//import jakarta.validation.constraints.Email;
//import jakarta.validation.constraints.NotBlank;
//
//@Entity
//@Table(name = "london_users")
//@AllArgsConstructor
//@NoArgsConstructor
//@Getter
//@Setter
//public class User {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    @Column(name = "id")
//    private Long id;
//
//    @Column(name = "username", nullable = false, unique = true)
//    @Size(min = 1, max = 15, message = "Имя пользователя должно содержать от 3 до 15 символов")
//    private String username;
//
//    @Column(name = "password", nullable = false)
//    @Size(min = 1, max = 20, message = "Пароль должен содержать не менее 6 символов")
//    private String password;
//
//    @Column(name = "email", nullable = false)
//    @Email(message = "Некорректный email")
//    private String email;
//
//    @Column(name = "role")
//    private String role;
//
//
//}
