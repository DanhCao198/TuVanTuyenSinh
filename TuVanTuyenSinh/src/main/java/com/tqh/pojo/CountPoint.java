/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.pojo;

/**
 *
 * @author HP
 */
@lombok.Setter
@lombok.Getter
public class CountPoint {
    private String maMon;
    private String tenMon;
    private double diem;
    
    public CountPoint(){
    }
    public CountPoint(String maMon,String tenMon,double diem){
    this.maMon=maMon;
    this.tenMon=tenMon;
    this.diem=diem;
    }
}
