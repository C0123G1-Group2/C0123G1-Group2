package repository;

import model.Services;

import java.util.List;

public interface IServicesRepository {
    List<Services> getAll();

    void save(Services services);

    void delete(int id);

    void edit(Services services);
}
