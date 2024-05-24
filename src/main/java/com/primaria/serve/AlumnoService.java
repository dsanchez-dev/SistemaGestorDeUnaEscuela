package com.primaria.serve;

import com.primaria.persistance.entity.AlumnoEntity;
import com.primaria.persistance.repository.AlumnoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AlumnoService {
    private final AlumnoRepository alumnoRepository;

    @Autowired
    public AlumnoService(AlumnoRepository alumnoRepository) {
        this.alumnoRepository = alumnoRepository;
    }

    public AlumnoEntity save(AlumnoEntity alumno) {
        return alumnoRepository.save(alumno);
    }

    public List<AlumnoEntity> getAll() {
        return alumnoRepository.findAll(Sort.by(Sort.Direction.DESC, "idAlumno"));
    }

    public Optional<AlumnoEntity> getById(Integer id) {
        return alumnoRepository.findById(id);
    }

    public void delete(Integer id) {
        alumnoRepository.deleteById(id);
    }
}
