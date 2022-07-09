package beans;

public class Proizvod {

    private int proizvodID;
    private int cenaPoPorciji;
    private Kategorija kategorija;
    private String nazivProizvoda;
    private String opis;
    private String slika;

    public Proizvod() {
    }

    public Proizvod(int proizvodID, int cenaPoPorciji, Kategorija kategorija, String nazivProizvoda, String opis, String slika) {
        this.proizvodID = proizvodID;
        this.cenaPoPorciji = cenaPoPorciji;
        this.kategorija = kategorija;
        this.nazivProizvoda = nazivProizvoda;
        this.opis = opis;
        this.slika = slika;
    }

    public int getProizvodID() {
        return proizvodID;
    }

    public void setProizvodID(int proizvodID) {
        this.proizvodID = proizvodID;
    }

    public int getCenaPoPorciji() {
        return cenaPoPorciji;
    }

    public void setCenaPoPorciji(int cenaPoPorciji) {
        this.cenaPoPorciji = cenaPoPorciji;
    }

    public Kategorija getKategorija() {
        return kategorija;
    }

    public void setKategorija(Kategorija kategorija) {
        this.kategorija = kategorija;
    }

    public String getNazivProizvoda() {
        return nazivProizvoda;
    }

    public void setNazivProizvoda(String nazivProizvoda) {
        this.nazivProizvoda = nazivProizvoda;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }
    
}
