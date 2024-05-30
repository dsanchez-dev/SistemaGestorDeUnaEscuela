package com.primaria.persistance.repository;

import com.primaria.persistance.entity.PadreDeFamiliaEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PadreDeFamiliaRepository extends JpaRepository<PadreDeFamiliaEntity,Integer> {
    List<PadreDeFamiliaEntity> findByNombre(String nombre);

}
