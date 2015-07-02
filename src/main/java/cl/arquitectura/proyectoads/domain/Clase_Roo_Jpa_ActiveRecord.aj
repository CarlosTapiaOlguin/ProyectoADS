// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.domain;

import cl.arquitectura.proyectoads.domain.Clase;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Clase_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Clase.entityManager;
    
    public static final EntityManager Clase.entityManager() {
        EntityManager em = new Clase().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Clase.countClases() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Clase o", Long.class).getSingleResult();
    }
    
    public static List<Clase> Clase.findAllClases() {
        return entityManager().createQuery("SELECT o FROM Clase o", Clase.class).getResultList();
    }
    
    public static Clase Clase.findClase(Integer id) {
        if (id == null) return null;
        return entityManager().find(Clase.class, id);
    }
    
    public static List<Clase> Clase.findClaseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Clase o", Clase.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Clase.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Clase.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Clase attached = Clase.findClase(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Clase.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Clase.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Clase Clase.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Clase merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}