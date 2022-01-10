package com.Practice.Shop;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Products {
	@Id
    private int ID;
    private String Name;
    private int Price;
    private String Status;
    private String Photo ;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getPhoto() {
		return Photo;
	}
	public void setPhoto(String photo) {
		Photo = photo;
	}
	@Override
	public String toString() {
		return "Products [ID=" + ID + ", Name=" + Name + ", Price=" + Price + ", Status=" + Status + ", Photo=" + Photo
				+ "]";
	}

	
	
	
	

	
    
}
