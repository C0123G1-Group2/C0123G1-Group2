package service;

import model.Services;

import java.util.List;

public interface IServicesService {
    List<Services> getAll();

    void save(Services services);

    void delete(int id);

    void edit(Services services);
}
