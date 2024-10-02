//package com.example.Oxxymiron.configurations;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//public class SecurityConfig {
//
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        http
//                .authorizeHttpRequests(auth -> auth
//                        .requestMatchers("/register", "/login", "/css/**", "/js/**").permitAll() // Разрешить доступ к этим страницам
//                        .anyRequest().permitAll() // Все остальные страницы требуют аутентификации
//                )
//                .formLogin(form -> form
//                        .loginPage("/login") // Страница входа
//                        .permitAll() // Разрешить доступ к странице входа всем
//                )
//                .logout(logout -> logout
//                        .permitAll() // Разрешить доступ к выходу всем
//                );
//
//        return http.build();
//    }
//}