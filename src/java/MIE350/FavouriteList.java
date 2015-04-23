/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package MIE350;

import java.util.HashMap;
import java.util.Map;
import java.util.Iterator;

/**
 *
 * @author EddyZulkifly
 */
public class FavouriteList {
    private Map map=new HashMap();
    
    public void add(Favourite new_favourite){
        map.put(new_favourite.getListing().getListingID(),new_favourite);
    }
    
    public void edit(Favourite edited_favourite){
        map.put(edited_favourite.getListing().getListingID(), edited_favourite);
    }
    
    public void delete(int ListingID){
        map.remove(ListingID);
    }
    
    public boolean has(int listingid){
        return map.containsKey(listingid);
    }
    
    public int size(){
        return map.size();
    }
    
    public boolean has(Favourite favourite){
        return map.containsKey(favourite.getListing().getListingID());
    }
    
    public Iterator iterator() {
        return map.values().iterator();
    }
    
//     public Favourite get(String username) throws NotFoundException{
//         if(!has(username)){
//           throw new NotFoundException(username);
//        }
//         return (Favourite) map.get(username);
//     }
    
    
}
