package com.wowo;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class JacksonDemo {
    public static void main(String[] args) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        //Java对象->JSON
        //mapper.writeValueAsString(obj);
        //JSON->Java对象
        //mapper.readValue(str,Class);

        //Java数组<=>JSON
        String[] arr = {"大胸乔伦","渣男凌建","鑫哥"};
        String str = mapper.writeValueAsString(arr);
        System.out.println("str="+str);
        str="[\"大胸乔伦\",\"渣男凌建\",\"鑫哥\"]";

        //JSON->数组
        String[] arr1 = mapper.readValue(str,String[].class);
        System.out.println(Arrays.toString(arr1));
        //Java对象<=>JSON
        User user = new User(1,"Eriri",20);
        str = mapper.writeValueAsString(user);
        System.out.println("str=" +str);
        str="{\"id\":2,\"name\":\"Eriri\",\"age\":16}";
        User user2 = mapper.readValue(str,User.class);
        System.out.println(user2);
        //Java List<User> <=> JSON
        List<User> users= new ArrayList<>();
        users.add(new User(1,"miao",8));
        users.add(new User(2,"pa",8));
        users.add(new User(3,"si",8));
        //[{"id":1,"name":"Eriri","age":20},{},{}]
        str = mapper.writeValueAsString(users);
        System.out.println("str="+str);
        str="[{\"id\":1,\"name\":\"miao\",\"age\":8},{\"id\":2,\"name\":\"pa\",\"age\":8},{\"id\":3,\"name\":\"si\",\"age\":8}]";
        List<User> users2 = mapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(users2);
    }
}
