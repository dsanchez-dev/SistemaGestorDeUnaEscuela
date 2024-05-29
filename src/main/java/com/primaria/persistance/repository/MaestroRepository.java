package com.primaria.persistance.repository;

import com.primaria.persistance.entity.MaestroEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MaestroRepository extends JpaRepository<MaestroEntity,Integer>{
    List<MaestroEntity> findByNombre(String nombre);
}
