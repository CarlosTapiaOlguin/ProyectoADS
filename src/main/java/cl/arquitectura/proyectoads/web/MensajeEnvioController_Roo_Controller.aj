// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cl.arquitectura.proyectoads.web;

import cl.arquitectura.proyectoads.domain.Escuela;
import cl.arquitectura.proyectoads.domain.Mensaje;
import cl.arquitectura.proyectoads.domain.MensajeEnvio;
import cl.arquitectura.proyectoads.domain.Persona;
import cl.arquitectura.proyectoads.web.MensajeEnvioController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect MensajeEnvioController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MensajeEnvioController.create(@Valid MensajeEnvio mensajeEnvio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mensajeEnvio);
            return "mensajeenvios/create";
        }
        uiModel.asMap().clear();
        mensajeEnvio.persist();
        return "redirect:/mensajeenvios/" + encodeUrlPathSegment(mensajeEnvio.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MensajeEnvioController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MensajeEnvio());
        return "mensajeenvios/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String MensajeEnvioController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("mensajeenvio", MensajeEnvio.findMensajeEnvio(id));
        uiModel.addAttribute("itemId", id);
        return "mensajeenvios/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MensajeEnvioController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("mensajeenvios", MensajeEnvio.findMensajeEnvioEntries(firstResult, sizeNo));
            float nrOfPages = (float) MensajeEnvio.countMensajeEnvios() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("mensajeenvios", MensajeEnvio.findAllMensajeEnvios());
        }
        return "mensajeenvios/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MensajeEnvioController.update(@Valid MensajeEnvio mensajeEnvio, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mensajeEnvio);
            return "mensajeenvios/update";
        }
        uiModel.asMap().clear();
        mensajeEnvio.merge();
        return "redirect:/mensajeenvios/" + encodeUrlPathSegment(mensajeEnvio.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String MensajeEnvioController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, MensajeEnvio.findMensajeEnvio(id));
        return "mensajeenvios/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String MensajeEnvioController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MensajeEnvio mensajeEnvio = MensajeEnvio.findMensajeEnvio(id);
        mensajeEnvio.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/mensajeenvios";
    }
    
    void MensajeEnvioController.populateEditForm(Model uiModel, MensajeEnvio mensajeEnvio) {
        uiModel.addAttribute("mensajeEnvio", mensajeEnvio);
        uiModel.addAttribute("escuelas", Escuela.findAllEscuelas());
        uiModel.addAttribute("mensajes", Mensaje.findAllMensajes());
        uiModel.addAttribute("personae", Persona.findAllPersonae());
    }
    
    String MensajeEnvioController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
