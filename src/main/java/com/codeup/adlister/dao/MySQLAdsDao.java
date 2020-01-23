package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());

            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();

            rs.next();

            DaoFactory.getCategoriesDao().insert(rs.getLong(1), ad);

            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            DaoFactory.getCategoriesDao().findCategory(rs.getLong("id"))
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    @Override
    public void updateAd(Ad ad) {
        try {
            // Query
            String query = "UPDATE ads SET title = ?, description = ? WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

            // Add information
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setLong(3, ad.getId());

            // Execute
            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error editing ad by id", e);
        }
    }

    @Override
    public List<Ad> searchedAds(String search) {
        try {
            String sql = "SELECT * FROM ads WHERE title LIKE ? OR description LIKE ?";
            String searchWildcard = "%" + search + "%";

            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, searchWildcard);
            stmt.setString(2, searchWildcard);

            List<Ad> ads = new ArrayList<>();
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        DaoFactory.getCategoriesDao().findCategory(rs.getLong("id"))));
                }
            return ads;
        } catch (SQLException e) {
            throw new RuntimeException("Error searching ads", e);
        }
    }

    @Override
    public Long delete(Long id) {
        try{
            String deleteQuery = "DELETE FROM ads WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(deleteQuery);
            ps.setLong(1, id);
            ps.executeUpdate();
            return Long.valueOf(2);
        } catch (SQLException e){
            throw new RuntimeException("Error deleting ad");
        }

}


    @Override
    public List<Ad> userProfileAds(Long id){
        PreparedStatement stmt = null;

        try{
            stmt = connection.prepareStatement("SELECT * FROM ads JOIN users ON ads.user_id = users.id WHERE users.id= ?");

            stmt.setLong(1,id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e){
            throw new RuntimeException("Error retrieving users ads", e);
        }
    }


    public Ad findAdById(long id) {
        PreparedStatement ps = null;
        try {
            String insertQuery = "SELECT * FROM ads WHERE id = ?";
            ps = connection.prepareStatement(insertQuery);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            if (!rs.next()) {
                return null;
            }
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving current ad.", e);
        }
    }



}
