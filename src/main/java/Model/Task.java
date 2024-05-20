package Model;

import java.sql.Date;

public class Task {
    private int tId;
    private String tDescription;
    private Date tStartdate;
    private Date tEndDate;
    private String statut;
    private String resources;
    private int pId;



    public Task() {}



    public Task(int tId, String tDescription, Date tStartdate, Date tEndDate, String statut, String resources, int pId) {
        this.tId = tId;
        this.tDescription = tDescription;
        this.tStartdate = tStartdate;
        this.tEndDate = tEndDate;
        this.statut = statut;
        this.resources = resources;
        this.pId = pId;
    }

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public String gettDescription() {
        return tDescription;
    }

    public void settDescription(String tDescription) {
        this.tDescription = tDescription;
    }

    public Date gettStartdate() {
        return tStartdate;
    }

    public void settStartdate(Date tStartdate) {
        this.tStartdate = tStartdate;
    }

    public Date gettEndDate() {
        return tEndDate;
    }

    public void settEndDate(Date tEndDate) {
        this.tEndDate = tEndDate;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    @Override
    public String toString() {
        return "Task{" +
                "tId=" + tId +
                ", tDescription='" + tDescription + '\'' +
                ", tStartdate=" + tStartdate +
                ", tEndDate=" + tEndDate +
                ", statut='" + statut + '\'' +
                ", resources='" + resources + '\'' +
                ", pId=" + pId +
                '}';
    }
}
