// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.Rol;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Rol_Roo_Jpa_Entity {
    
    declare @type: Rol: @Entity;
    
    declare @type: Rol: @Table(name = "rol");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Rol.id;
    
    public Integer Rol.getId() {
        return this.id;
    }
    
    public void Rol.setId(Integer id) {
        this.id = id;
    }
    
}