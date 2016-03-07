package com.xiaopan.Repository;

import com.xiaopan.Model.Post;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by figo on 16/2/21.
 */
public interface PostRepository extends MongoRepository<Post, String> {
    Post findById(String id);
}
