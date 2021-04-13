package model.bean;

public class Product {
    int id;
    String name;
    double price;
    String description;
    String vendor;

    public Product() {
    }

    public Product(int id, String name, double price, String description, String vendor) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.vendor = vendor;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVendor() {
        return vendor;
    }

    public void setVendor(String vendor) {
        this.vendor = vendor;
    }
}
