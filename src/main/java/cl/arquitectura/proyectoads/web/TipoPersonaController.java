package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.TipoPersona;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tipopersonas")
@Controller
@RooWebScaffold(path = "tipopersonas", formBackingObject = TipoPersona.class)
public class TipoPersonaController {
}
