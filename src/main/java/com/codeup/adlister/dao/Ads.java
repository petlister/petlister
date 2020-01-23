package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    // locate specific ad by id
    Ad findAdById(long id);

    void updateAd(Ad ad);

    List<Ad> searchedAds(String string);

    Long delete(Long id);

    List<Ad> userProfileAds(Long id);
}
