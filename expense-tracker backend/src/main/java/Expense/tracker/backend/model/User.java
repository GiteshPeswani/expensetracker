package Expense.tracker.backend.model;

public class User {
    Long id;
    String name;
    String username;
    String email;
    String password;
    String phone;
    int activeYn;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getActiveYn() {
        return activeYn;
    }

    public void setActiveYn(int activeYn) {
        this.activeYn = activeYn;
    }
}
