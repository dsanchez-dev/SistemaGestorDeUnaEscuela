package com.primaria.persistance.repository;

import com.primaria.persistance.entity.AlumnoEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlumnoRepository  extends JpaRepository<AlumnoEntity,Integer> {
    List<AlumnoEntity> findByNombre(String nombre);
}
