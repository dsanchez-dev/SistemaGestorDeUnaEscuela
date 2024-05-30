package com.primaria.serve;

import com.primaria.persistance.entity.PadreDeFamiliaEntity;
import com.primaria.persistance.repository.PadreDeFamiliaRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PadreDeFamiliaService {
    private final PadreDeFamiliaRepository padreDeFamiliaRepository;

    public PadreDeFamiliaService(PadreDeFamiliaRepository padreDeFamiliaRepository) {
        this.padreDeFamiliaRepository = padreDeFamiliaRepository;
    }

    public PadreDeFamiliaEntity save(PadreDeFamiliaEntity padreDeFamilia) {
        return padreDeFamiliaRepository.save(padreDeFamilia);
    }

    public List<PadreDeFamiliaEntity> getAll() {
        return padreDeFamiliaRepository.findAll(Sort.by(Sort.Direction.DESC, "idPadre"));
    }

    public Optional<PadreDeFamiliaEntity> getById(Integer id) {
        return padreDeFamiliaRepository.findById(id);
    }

    public void delete(Integer id) {
        padreDeFamiliaRepository.deleteById(id);
    }

    public List<PadreDeFamiliaEntity> findByNombre(String nombre) {
        return padreDeFamiliaRepository.findByNombre(nombre);
    }
}
