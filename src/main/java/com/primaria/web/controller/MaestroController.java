package com.primaria.web.controller;

import com.primaria.persistance.entity.MaestroEntity;
import com.primaria.serve.MaestroService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/maestros")
public class MaestroController {

    private final MaestroService maestroService;

    public MaestroController(MaestroService maestroService) {
        this.maestroService = maestroService;
    }

    @GetMapping("")
    public ModelAndView List(){
        ModelAndView modelAndView = new ModelAndView("maestro/read");
        modelAndView.addObject("maestros", maestroService.getAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView getById(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("maestro/form");
        modelAndView.addObject("maestro", maestroService.getById(id).get());
        return modelAndView;
    }

    @GetMapping("/new")
    public ModelAndView newMaestro() {
        ModelAndView modelAndView = new ModelAndView("maestro/form");
        modelAndView.addObject("maestro", new MaestroEntity());
        return modelAndView;
    }

    @PutMapping("/guardar")
    public ModelAndView saveOrUpdate(@ModelAttribute("maestro") MaestroEntity maestro, RedirectAttributes redirectAttributes) {
        maestroService.save(maestro);
        if (maestro.getIdMaestro() ==null) {
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
        return new ModelAndView("redirect:/maestros");
    }


    @DeleteMapping("/{id}")
    public ModelAndView deleteMaestroById(@PathVariable("id") Integer id, RedirectAttributes redirectAttributes) {
        maestroService.delete(id);
        redirectAttributes.addFlashAttribute("message",
                                             "Eliminado correctamente!");
        redirectAttributes.addFlashAttribute("alertClass",
                                             "alert-danger");
        return new ModelAndView("redirect:/maestros");
    }

    @GetMapping("/buscar")
    public ModelAndView findByNombre(@RequestParam("nombre") String nombre) {
        ModelAndView modelAndView = new ModelAndView("maestro/read");
        modelAndView.addObject("maestros", maestroService.findByNombre(nombre));
        return modelAndView;
    }
}
