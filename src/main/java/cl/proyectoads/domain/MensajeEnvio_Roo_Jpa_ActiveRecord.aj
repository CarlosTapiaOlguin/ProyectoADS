// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.proyectoads;

import cl.proyectoads.MensajeEnvio;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MensajeEnvio_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MensajeEnvio.entityManager;
    
    public static final List<String> MensajeEnvio.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager MensajeEnvio.entityManager() {
        EntityManager em = new MensajeEnvio().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MensajeEnvio.countMensajeEnvios() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MensajeEnvio o", Long.class).getSingleResult();
    }
    
    public static List<MensajeEnvio> MensajeEnvio.findAllMensajeEnvios() {
        return entityManager().createQuery("SELECT o FROM MensajeEnvio o", MensajeEnvio.class).getResultList();
    }
    
    public static List<MensajeEnvio> MensajeEnvio.findAllMensajeEnvios(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MensajeEnvio o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MensajeEnvio.class).getResultList();
    }
    
    public static MensajeEnvio MensajeEnvio.findMensajeEnvio(Integer id) {
        if (id == null) return null;
        return entityManager().find(MensajeEnvio.class, id);
    }
    
    public static List<MensajeEnvio> MensajeEnvio.findMensajeEnvioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MensajeEnvio o", MensajeEnvio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MensajeEnvio> MensajeEnvio.findMensajeEnvioEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MensajeEnvio o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MensajeEnvio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MensajeEnvio.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MensajeEnvio.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MensajeEnvio attached = MensajeEnvio.findMensajeEnvio(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MensajeEnvio.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MensajeEnvio.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MensajeEnvio MensajeEnvio.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MensajeEnvio merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}