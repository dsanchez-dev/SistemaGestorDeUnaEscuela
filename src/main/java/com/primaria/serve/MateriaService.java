package com.primaria.serve;

import com.primaria.persistance.entity.MateriaEntity;
import com.primaria.persistance.repository.MateriaRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MateriaService {
    private final MateriaRepository materiaRepository;

    public MateriaService(MateriaRepository materiaRepository) {
        this.materiaRepository = materiaRepository;
    }

    public List<MateriaEntity> getAll() {
        return materiaRepository.findAll(Sort.by(Sort.Direction.DESC, "idMateria"));
    }

    public Optional<MateriaEntity> getById(Integer id){
        return materiaRepository.findById(id);
    }

    public MateriaEntity save(MateriaEntity materia){
        return materiaRepository.save(materia);
    }

    public void delete(Integer id){
        materiaRepository.deleteById(id);
    }
}
