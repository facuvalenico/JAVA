package ar.org.centro8.curso.java.proyectofinal.repositories.interfaces;

import java.util.ArrayList;
import java.util.List;
import ar.org.centro8.curso.java.proyectofinal.entities.CuentaMoneda;
import ar.org.centro8.curso.java.proyectofinal.entities.Moneda;

public interface I_CuentaMonedaRepository {
    void save(CuentaMoneda cuenta_moneda);

    void remove(CuentaMoneda cuenta_moneda);

    void update(CuentaMoneda cuenta_moneda);

    default CuentaMoneda getById(int ctaMon_id) {
        return getAll()
                .stream()
                .filter(a -> a.getCtaAcc_id() == id)
                .findAny()
                .orElse(new CuentaMoneda());
    }

    default List<CuentaMoneda> getLikeMoneda(Moneda moneda) {
        if (moneda == null)
            return new ArrayList();
        return getAll()
                .stream()
                .filter(a -> a.getMon_id() == moneda.getMon_id())
                .toList();
    }
}
