package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public Ad findAdById(long id) {
        return null;
    }

    @Override
    public void updateAd(Ad ad) {
    }

    @Override
    public List<Ad> searchedAds(String string) {
        return null;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        return ads;
    }

    @Override
    public Long delete(Long id) {
        return null;
    }
}
