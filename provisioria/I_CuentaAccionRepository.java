package ar.org.centro8.curso.java.proyectofinal.repositories.interfaces;

import ar.org.centro8.curso.java.proyectofinal.entities.CuentaAccion;
import java.util.ArrayList;
import java.util.List;

import ar.org.centro8.curso.java.proyectofinal.entities.Accion;

public interface I_CuentaAccionRepository {
    void save(CuentaAccion cuenta_accion);

    void remove(CuentaAccion cuenta_accion);

    void update(CuentaAccion cuenta_accion);

    default CuentaAccion getById(int ctaAcc_id) {
        return getAll()
                .stream()
                .filter(a -> a.getCtaAcc_id() == id)
                .findAny()
                .orElse(new CuentaAccion());
    }

    default List<CuentaAccion> getLikeAccion(Accion accion) {
        if (accion == null)
            return new ArrayList();
        return getAll()
                .stream()
                .filter(a -> a.getAcc_id() == accion.getAcc_id())
                .toList();
    }

}
