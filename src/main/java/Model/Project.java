package Model;

import java.time.LocalDate;
import java.util.Date;

public class Project {
    private int pId;
    private String pName;
    private String pDescription;
    private LocalDate pStartdate;
    private LocalDate pEndDate;
    private double budget;


    public Project() {
    }

    public Project(int pId,  String pName,String pDescription, LocalDate pStartdate, LocalDate pEndDate, double budget) {
        this.pId = pId;
        this.pName = pName;
        this.pDescription = pDescription;
        this.pStartdate = pStartdate;
        this.pEndDate = pEndDate;
        this.budget = budget;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public LocalDate getpStartdate() {
        return pStartdate;
    }

    public void setpStartdate(LocalDate pStartdate) {
        this.pStartdate = pStartdate;
    }

    public LocalDate getpEndDate() {
        return pEndDate;
    }

    public void setpEndDate(LocalDate pEndDate) {
        this.pEndDate = pEndDate;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    @Override
    public String toString() {
        return "Project{" +
                "pId=" + pId +
                ", pName='" + pName + '\'' +
                ", pDescription='" + pDescription + '\'' +
                ", pStartdate=" + pStartdate +
                ", pEndDate=" + pEndDate +
                ", budget=" + budget +
                '}';
    }
}
