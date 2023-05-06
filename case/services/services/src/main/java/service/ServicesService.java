package service;

import model.Services;
import repository.IServicesRepository;
import repository.ServicesRepository;

import java.util.List;

public class ServicesService implements IServicesService{
    private IServicesRepository servicesRepository = new ServicesRepository();
    @Override
    public List<Services> getAll() {
        List<Services> servicesList =   servicesRepository.getAll();
        return servicesList;
    }

    @Override
    public void save(Services services) {
        servicesRepository.save(services);
    }

    @Override
    public void delete(int id) {
        servicesRepository.delete(id);
    }

    @Override
    public void edit(Services services) {
        servicesRepository.edit(services);
    }
}
