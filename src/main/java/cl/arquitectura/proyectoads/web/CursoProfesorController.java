package cl.arquitectura.proyectoads.web;
import cl.arquitectura.proyectoads.domain.CursoProfesor;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/cursoprofesors")
@Controller
@RooWebScaffold(path = "cursoprofesors", formBackingObject = CursoProfesor.class)
public class CursoProfesorController {
}
