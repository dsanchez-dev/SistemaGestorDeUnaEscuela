package com.primaria.persistance.repository;

import com.primaria.persistance.entity.AlumnoEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlumnoRepository  extends JpaRepository<AlumnoEntity,Integer> {
}
