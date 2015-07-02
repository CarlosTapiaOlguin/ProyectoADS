package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Campana;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/campanas")
@Controller
@RooWebScaffold(path = "campanas", formBackingObject = Campana.class)
public class CampanaController {
}
