package repository;

import beans.Narudzbina;
import interfaces.IRepository;
import java.sql.SQLException;
import java.util.List;

public class NarudzbinaRepository implements IRepository<Narudzbina> {

    @Override
    public void dodaj(Narudzbina zaDodavanje) {
    }

    @Override
    public List<Narudzbina> getSve() {
    return null;
    }

    @Override
    public void izmeni(Narudzbina stariT, Narudzbina noviT) {
    }

    @Override
    public void izbrisi(Narudzbina zaBrisanje) {
    }

    @Override
    public Narudzbina getJedan(Narudzbina trazeni) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
