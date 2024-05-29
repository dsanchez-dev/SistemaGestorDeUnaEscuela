package com.primaria.persistance.repository;

import com.primaria.persistance.entity.MateriaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MateriaRepository extends JpaRepository<MateriaEntity,Integer> {
    List<MateriaEntity> findByNombre(String nombre);
}
