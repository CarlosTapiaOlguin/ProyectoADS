package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.TipoMensaje;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tipomensajes")
@Controller
@RooWebScaffold(path = "tipomensajes", formBackingObject = TipoMensaje.class)
public class TipoMensajeController {
}
