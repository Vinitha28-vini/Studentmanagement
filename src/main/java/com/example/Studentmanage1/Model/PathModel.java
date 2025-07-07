package com.example.Studentmanage1.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hiber")
public class PathModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;

    @Column
    private String department;

    @Column
    private int year;

    @Column
    private String dob;

    @Column
    private String place;

    @Column
    private String fatherName;

    @Column
    private String motherName;

    public PathModel() {}

    public PathModel(int id, String name, String department, int year, String dob,
                     String place, String fatherName, String motherName) {
        this.id = id;
        this.name = name;
        this.department = department;
        this.year = year;
        this.dob = dob;
        this.place = place;
        this.fatherName = fatherName;
        this.motherName = motherName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    @Override
    public String toString() {
        return "PathModel [id=" + id + ", name=" + name + ", department=" + department +
               ", year=" + year + ", dob=" + dob + ", place=" + place +
               ", fatherName=" + fatherName + ", motherName=" + motherName + "]";
    }
}
