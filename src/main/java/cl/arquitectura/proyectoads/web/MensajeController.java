package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.Mensaje;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mensajes")
@Controller
@RooWebScaffold(path = "mensajes", formBackingObject = Mensaje.class)
public class MensajeController {
}
