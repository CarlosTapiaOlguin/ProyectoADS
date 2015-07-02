package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.MensajeEnvio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mensajeenvios")
@Controller
@RooWebScaffold(path = "mensajeenvios", formBackingObject = MensajeEnvio.class)
public class MensajeEnvioController {
}
