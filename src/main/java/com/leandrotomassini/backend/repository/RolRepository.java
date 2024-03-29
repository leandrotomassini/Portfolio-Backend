package com.leandrotomassini.backend.repository;


import com.leandrotomassini.backend.entity.Rol;
import com.leandrotomassini.backend.enums.RolNombre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RolRepository extends JpaRepository<Rol, Long> {
    Optional<Rol> findByRolNombre(RolNombre rolNombre);
}