package com.example.Oxxymiron.controllers;

import com.example.Oxxymiron.models.Album;
import com.example.Oxxymiron.services.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MainController {

    private final AlbumService albumService;

    @Autowired
    public MainController(AlbumService albumService) {
        this.albumService = albumService;
    }

    @GetMapping("/") // Path for displaying albums
    public String showAlbums(
            @RequestParam(value = "currentIndex", defaultValue = "0") int currentIndex,
            Model model) {

        // Fetch all albums
        List<Album> albums = albumService.getAllAlbums();

        // Check if there are any albums
        if (albums.isEmpty()) {
            model.addAttribute("message", "Нет доступных альбомов."); // No albums message
            return "oxxxy"; // Return to your template path
        }

        // Set model attributes for album display
        model.addAttribute("albums", albums);
        return "oxxxy"; // Return to your template path
    }

}
