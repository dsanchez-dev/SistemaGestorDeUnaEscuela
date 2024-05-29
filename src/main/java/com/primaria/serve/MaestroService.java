package com.primaria.serve;

import com.primaria.persistance.entity.MaestroEntity;
import com.primaria.persistance.repository.MaestroRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MaestroService {

    private final MaestroRepository maestroRepository;

    public MaestroService(MaestroRepository maestroRepository) {
        this.maestroRepository = maestroRepository;
    }

    public List<MaestroEntity> getAll() {
        return maestroRepository.findAll(Sort.by(Sort.Direction.DESC, "idMaestro"));
    }

    public Optional<MaestroEntity> getById(Integer id) {
        return maestroRepository.findById(id);
    }

    public MaestroEntity save(MaestroEntity maestro) {
        return maestroRepository.save(maestro);
    }

    public void delete(Integer id) {
        maestroRepository.deleteById(id);
    }

}
