package Model;

import java.util.Date;

public class Task {
    private int tId;
    private String tDescription;
    private Date dateDebut;
    private Date tStartdate;
    private Date tEndDate;
    private int pId;


    public Task() {
    }

    public Task(int tId, String tDescription, Date dateDebut, Date tStartdate, Date tEndDate, int pId) {
        this.tId = tId;
        this.tDescription = tDescription;
        this.dateDebut = dateDebut;
        this.tStartdate = tStartdate;
        this.tEndDate = tEndDate;
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

    public Date getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
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

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }
}
