package repository;

import model.Services;

import java.util.ArrayList;
import java.util.List;

public class ServicesRepository implements IServicesRepository{

    public  static  List<Services>  servicesList = new ArrayList<>();

    static {
        servicesList.add(new Services(1,"sân1","100k"));
        servicesList.add(new Services(2,"sân2","80k"));
        servicesList.add(new Services(3,"sân3","120k"));
        servicesList.add(new Services(4,"sân4","80k"));
        servicesList.add(new Services(5,"sân5","100k"));
        servicesList.add(new Services(6,"sân6","120k"));
        servicesList.add(new Services(7,"sân7","100k"));
    }

    @Override
    public List<Services> getAll() {

        return servicesList;
    }

    @Override
    public void save(Services services) {
        servicesList.add(services);
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i <servicesList.size() ; i++) {
            if(id==servicesList.get(i).getId()){
                servicesList.remove(i);
                break;
            }
        }
    }

    @Override
    public void edit(Services services) {
        int id = services.getId();
        for (int i = 0; i <servicesList.size() ; i++) {
            if(id==servicesList.get(i).getId()){
                servicesList.set(i,services);
            }
        }
    }
}
