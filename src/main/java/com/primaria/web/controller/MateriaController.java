package com.primaria.web.controller;

import com.primaria.persistance.entity.MateriaEntity;
import com.primaria.serve.MateriaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/materias")
public class MateriaController {

    private final MateriaService materiaService;

    public MateriaController(MateriaService materiaService) {
        this.materiaService = materiaService;
    }

    @GetMapping("")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("materia/read");
        modelAndView.addObject("materias", materiaService.getAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView getById(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("materia/form");
        modelAndView.addObject("materia", materiaService.getById(id).get());
        return modelAndView;
    }

    @GetMapping("/new")
    public ModelAndView newMateria() {
        ModelAndView modelAndView = new ModelAndView("materia/form");
        modelAndView.addObject("materia", new MateriaEntity());
        return modelAndView;
    }

    @PutMapping("/guardar")
    public ModelAndView saveOrUpdate(@ModelAttribute("materia") MateriaEntity materia, RedirectAttributes redirectAttributes) {
        materiaService.save(materia);
        if (materia.getIdMateria() ==null) {
            redirectAttributes.addFlashAttribute("message",
                                                 "Operacion fallida!");
            redirectAttributes.addFlashAttribute("alertClass",
                                                 "alert-danger");
        } else {
            redirectAttributes.addFlashAttribute("message",
                    "Operacion realizada correctamente!");
            redirectAttributes.addFlashAttribute("alertClass",
                                                 "alert-success");
        }
        return new ModelAndView("redirect:/materias");
    }

    @DeleteMapping("/{id}")
    public ModelAndView deleteMateriaById(@PathVariable("id") Integer id, RedirectAttributes redirectAttributes) {
        materiaService.delete(id);
        redirectAttributes.addFlashAttribute("message",
                                             "Materia eliminada correctamente!");
        redirectAttributes.addFlashAttribute("alertClass",
                                             "alert-success");
        return new ModelAndView("redirect:/materias");
    }

    @GetMapping("/buscar")
    public ModelAndView findByNombre(@RequestParam("nombre") String nombre) {
        ModelAndView modelAndView = new ModelAndView("materia/read");
        modelAndView.addObject("materias", materiaService.findByNombre(nombre));
        return modelAndView;
    }
}
