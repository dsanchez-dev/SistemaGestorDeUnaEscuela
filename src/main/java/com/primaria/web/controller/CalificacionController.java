package com.primaria.web.controller;

import com.primaria.persistance.entity.CalificacionEntity;
import com.primaria.serve.CalificacionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/calificaciones")
public class CalificacionController {

    private final CalificacionService calificacionService;

    public CalificacionController(CalificacionService calificacionService) {
        this.calificacionService = calificacionService;
    }

    @GetMapping("")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("calificacion/read");
        modelAndView.addObject("calificaciones", calificacionService.getAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView getById(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("calificacion/form");
        modelAndView.addObject("calificacion", calificacionService.getById(id).orElse(new CalificacionEntity()));
        return modelAndView;
    }

    @GetMapping("/new")
    public ModelAndView newCalificacion() {
        ModelAndView modelAndView = new ModelAndView("calificacion/form");
        modelAndView.addObject("calificacion", new CalificacionEntity());
        return modelAndView;
    }

    @GetMapping("/edit/{id}")
    public ModelAndView editCalificacion(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("calificacion/form");
        CalificacionEntity calificacion = calificacionService.findById(id);
        modelAndView.addObject("calificacion", calificacion);
        return modelAndView;
    }

    @PostMapping("/guardar")
    public ModelAndView saveOrUpdate(@ModelAttribute CalificacionEntity calificacion, RedirectAttributes redirectAttributes) {
        calificacionService.save(calificacion);
        redirectAttributes.addFlashAttribute("message", "Operación realizada correctamente!");
        redirectAttributes.addFlashAttribute("alertClass", "alert-success");
        return new ModelAndView("redirect:/calificaciones");
    }

    @DeleteMapping("/{id}")
    public ModelAndView deleteById(@PathVariable("id") Integer id, RedirectAttributes redirectAttributes) {
        calificacionService.delete(id);
        redirectAttributes.addFlashAttribute("message",
                                             "Calificación eliminada correctamente!");
        redirectAttributes.addFlashAttribute("alertClass",
                                             "alert-danger");
        return new ModelAndView("redirect:/calificaciones");
    }

    @GetMapping("/buscar")
    public ModelAndView buscar(@RequestParam("nombre") String nombre) {
        ModelAndView modelAndView = new ModelAndView("calificacion/read");
        modelAndView.addObject("calificaciones", calificacionService.findByAlumnoNombre(nombre));
        return modelAndView;
    }

}
