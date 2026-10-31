package org.json;
import java.util.LinkedHashMap;
import java.util.Map;
public class JSONObject {
 private final Map<String,Object> data = new LinkedHashMap<>();
 public JSONObject put(String key,Object value){data.put(key,value);return this;}
 public String toString(){return data.toString();}
}
