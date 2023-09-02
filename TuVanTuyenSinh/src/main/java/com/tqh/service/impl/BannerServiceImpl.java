/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.cloudinary.Cloudinary;
import com.tqh.pojo.Banner;
import com.tqh.repository.BannerRepository;
import com.tqh.service.BannerService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class BannerServiceImpl implements BannerService{
    @Autowired
    private BannerRepository bannerRepo;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Banner> getBanners(Map<String, String> params) {
        return this.bannerRepo.getBanners(params); 
    }

    @Override
    public Long countBanner() {
        return this.bannerRepo.countBanner();
    }

    @Override
    public boolean addOrUpdateBanner(Banner b) {
        return this.bannerRepo.addOrUpdateBanner(b);
    }

    @Override
    public boolean deleteBanner(int id) {
                return this.bannerRepo.deleteBanner(id);
    }

    @Override
    public Banner getBannerById(int id) {
        return this.bannerRepo.getBannerById(id);
    }
    
    
}
