// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.CursoProfesor;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect CursoProfesor_Roo_Jpa_Entity {
    
    declare @type: CursoProfesor: @Entity;
    
    declare @type: CursoProfesor: @Table(name = "curso_profesor");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer CursoProfesor.id;
    
    public Integer CursoProfesor.getId() {
        return this.id;
    }
    
    public void CursoProfesor.setId(Integer id) {
        this.id = id;
    }
    
}
