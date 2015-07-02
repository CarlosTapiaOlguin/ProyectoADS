package cl.arquitectura.proyectoads.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "evento")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "mensajes", "idCampana" })
public class Evento {
}
