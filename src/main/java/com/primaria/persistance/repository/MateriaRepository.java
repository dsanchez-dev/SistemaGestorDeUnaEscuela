package com.primaria.persistance.repository;

import com.primaria.persistance.entity.MateriaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MateriaRepository extends JpaRepository<MateriaEntity,Integer> {
}
