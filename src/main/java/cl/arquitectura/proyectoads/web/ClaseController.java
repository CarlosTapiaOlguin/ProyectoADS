package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Clase;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clases")
@Controller
@RooWebScaffold(path = "clases", formBackingObject = Clase.class)
public class ClaseController {
}
