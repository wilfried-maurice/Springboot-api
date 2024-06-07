package com.example.full.stack_backend.repository;

import com.example.full.stack_backend.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
