package com.leandrotomassini.backend.repository;

import com.leandrotomassini.backend.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Optional<Usuario> findByNombreUsuario(String nu);
    boolean existsByNombreUsuario(String nu);
    boolean existsByEmail(String email);
}