package Model;

public class Resource {
    private int rId;
    private String r_Name;
    private String rType;
    private int Quantity;
    private String provider;
    private int tId;


    public Resource() {
    }

    public Resource(int rId, String r_Name, String rType, int quantity, String provider, int tId) {
        this.rId = rId;
        this.r_Name = r_Name;
        this.rType = rType;
        Quantity = quantity;
        this.provider = provider;
        this.tId = tId;
    }

    public int getrId() {
        return rId;
    }

    public void setrId(int rId) {
        this.rId = rId;
    }

    public String getR_Name() {
        return r_Name;
    }

    public void setR_Name(String r_Name) {
        this.r_Name = r_Name;
    }

    public String getrType() {
        return rType;
    }

    public void setrType(String rType) {
        this.rType = rType;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }
}
