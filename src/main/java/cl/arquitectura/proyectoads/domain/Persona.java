package cl.arquitectura.proyectoads.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "persona")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "cursoProfesor", "mensajeEnvio", "personae", "idTipoPersona", "idRol", "idApoderado" })
public class Persona {
}
