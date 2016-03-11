package com.xiaopan;

import com.google.gson.Gson;
import com.mongodb.util.JSON;
import com.xiaopan.Model.Post;
import com.xiaopan.Repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import java.util.Map;

@SpringBootApplication
@Controller
public class ZoneApplication {

    @Autowired
    private PostRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(ZoneApplication.class, args);
	}

    @RequestMapping("/")
    String home(Map<String, Object> model) {
        model.put("posts", this.repository.findAll());
        return "index";
    }

    @RequestMapping(value = "/articles", method = RequestMethod.POST)
    String postArticle(@RequestBody Post post) {
        System.out.println(new Gson().toJson(post));
        repository.save(post);
        return "redirect:/";
    }

    @RequestMapping(value = "/articles/{articlesId}", method=RequestMethod.GET)
    public String getArticles(@PathVariable String articlesId, Map<String, Object> model) {
        model.put("post", this.repository.findById(articlesId));
        return "post/article-home";
    }

    @RequestMapping(value = "/articles/{articlesId}.json", method=RequestMethod.GET)
    public @ResponseBody Post getArticlesJSON(@PathVariable String articlesId) {
        return this.repository.findById(articlesId);
    }
}
