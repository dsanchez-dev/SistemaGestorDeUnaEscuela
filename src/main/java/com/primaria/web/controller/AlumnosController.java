package com.primaria.web.controller;

import com.primaria.persistance.entity.AlumnoEntity;
import com.primaria.serve.AlumnoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/alumnos")
public class AlumnosController {

    private final AlumnoService alumnoService;

    public AlumnosController(AlumnoService alumnoService) {
        this.alumnoService = alumnoService;
    }

    @GetMapping("")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("alumno/read");
        modelAndView.addObject("alumnos", alumnoService.getAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView getById(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("alumno/form");
        modelAndView.addObject("alumno", alumnoService.getById(id).get());
        return modelAndView;
    }

    @GetMapping("/new")
    public ModelAndView newAlumno() {
        ModelAndView modelAndView = new ModelAndView("alumno/form");
        modelAndView.addObject("alumno", new AlumnoEntity());
        return modelAndView;
    }

    @PutMapping("/guardar")
    public ModelAndView saveOrUpdate(@ModelAttribute("alumno") AlumnoEntity alumno) {
        alumnoService.save(alumno);
        return new ModelAndView("redirect:/alumnos");
    }

    @DeleteMapping("/{id}")
    public ModelAndView deleteAlumnoById(@PathVariable("id") Integer id) {
        alumnoService.delete(id);
        return new ModelAndView("redirect:/alumnos");
    }
}
