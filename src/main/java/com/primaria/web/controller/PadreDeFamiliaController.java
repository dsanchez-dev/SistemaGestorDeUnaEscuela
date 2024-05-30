package com.primaria.web.controller;

import com.primaria.persistance.entity.PadreDeFamiliaEntity;
import com.primaria.serve.PadreDeFamiliaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/padres")
public class PadreDeFamiliaController {

    private final PadreDeFamiliaService padreDeFamiliaService;

    public PadreDeFamiliaController(PadreDeFamiliaService padreDeFamiliaService) {
        this.padreDeFamiliaService = padreDeFamiliaService;
    }

    @GetMapping("")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("padre/read");
        modelAndView.addObject("padres", padreDeFamiliaService.getAll());
        return modelAndView;
    }

    @GetMapping("/{id}")
    public ModelAndView getById(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("padre/form");
        modelAndView.addObject("padre", padreDeFamiliaService.getById(id).get());
        return modelAndView;
    }

    @GetMapping("/new")
    public ModelAndView newPadre() {
        ModelAndView modelAndView = new ModelAndView("padre/form");
        modelAndView.addObject("padre", new PadreDeFamiliaEntity());
        return modelAndView;
    }

    @PutMapping("/guardar")
    public ModelAndView saveOrUpdate(@ModelAttribute("padre")PadreDeFamiliaEntity padre, RedirectAttributes redirectAttributes) {
        padreDeFamiliaService.save(padre);
        if (padre.getIdPadre() ==null) {
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
        return new ModelAndView("redirect:/padres");
    }

    @DeleteMapping("/{id}")
    public ModelAndView deletePadreById(@PathVariable("id") Integer id, RedirectAttributes redirectAttributes) {
        padreDeFamiliaService.delete(id);
        redirectAttributes.addFlashAttribute("message",
                                             "Operacion realizada correctamente!");
        redirectAttributes.addFlashAttribute("alertClass",
                                             "alert-success");
        return new ModelAndView("redirect:/padres");
    }

    @GetMapping("/buscar")
    public ModelAndView buscarPorNombre(@RequestParam("nombre") String nombre) {
        ModelAndView modelAndView = new ModelAndView("padre/read");
        modelAndView.addObject("padres", padreDeFamiliaService.findByNombre(nombre));
        return modelAndView;
    }
}
