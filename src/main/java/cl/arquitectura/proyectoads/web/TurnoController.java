package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Turno;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/turnoes")
@Controller
@RooWebScaffold(path = "turnoes", formBackingObject = Turno.class)
public class TurnoController {
}
