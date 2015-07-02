package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Escuela;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/escuelas")
@Controller
@RooWebScaffold(path = "escuelas", formBackingObject = Escuela.class)
public class EscuelaController {
}
