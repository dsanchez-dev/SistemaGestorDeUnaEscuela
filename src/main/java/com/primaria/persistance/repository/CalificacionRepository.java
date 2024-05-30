package com.primaria.persistance.repository;

import com.primaria.persistance.entity.CalificacionEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CalificacionRepository extends JpaRepository<CalificacionEntity, Integer>{
    List<CalificacionEntity> findByAlumnoNombre(String nombre);
}
