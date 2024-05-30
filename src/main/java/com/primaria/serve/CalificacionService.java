package com.primaria.serve;

import com.primaria.persistance.entity.CalificacionEntity;
import com.primaria.persistance.repository.CalificacionRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CalificacionService {

    private final CalificacionRepository calificacionRepository;

    public CalificacionService(CalificacionRepository calificacionRepository) {
        this.calificacionRepository = calificacionRepository;
    }

    public CalificacionEntity save(CalificacionEntity calificacion) {
        return calificacionRepository.save(calificacion);
    }

    public List<CalificacionEntity> getAll() {
        return calificacionRepository.findAll(Sort.by(Sort.Direction.DESC, "idCalificacion"));
    }

    public Optional<CalificacionEntity> getById(Integer id) {
        return calificacionRepository.findById(id);
    }

    public void delete(Integer id) {
        calificacionRepository.deleteById(id);
    }

    public List<CalificacionEntity> findByAlumnoNombre(String nombre) {
        return calificacionRepository.findByAlumnoNombre(nombre);
    }
}
