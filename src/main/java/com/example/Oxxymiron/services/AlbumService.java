package com.example.Oxxymiron.services;

import com.example.Oxxymiron.models.Album;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AlbumService {

    private List<Album> albums = new ArrayList<>();

    public AlbumService() {
        albums.add(new Album("https://music.yandex.ru/album/33056651","Журавли", "images/Zuravli.jpg"));
        albums.add(new Album("https://music.yandex.ru/album/31203434","Мир горит", "images/Mir.png"));
        albums.add(new Album("https://music.yandex.ru/album/28626101","Семейный альбом", "images/Semeinii.jpeg"));
        albums.add(new Album("https://music.yandex.ru/album/27533353","Прекрасное Далёко", "images/Daleko.jpeg"));
        albums.add(new Album("https://music.yandex.ru/album/27217546","1.Kla$", "images/klass.jpeg"));
    }

    public List<Album> getAllAlbums() {
        return albums;
    }

    public Album getNextAlbum(int currentIndex) {
        return albums.get((currentIndex + 1) % albums.size());
    }

    public Album getPreviousAlbum(int currentIndex) {
        return albums.get((currentIndex - 1 + albums.size()) % albums.size());
    }
}
