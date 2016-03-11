<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="grid col s12 m9 l10">
                <#list posts as post>
                    <div class="col s12" >
                        <div class="card small">
                            <!--
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="http://materializecss.com/images/office.jpg">
                            </div>
                            <div class="card-content">
                                <span class="card-title activator grey-text text-darken-4">${post.title}<i class="material-icons right">more_vert</i></span>
                                <p><a href="articles/${post.id}">文章的正文</a></p>
                            </div>
                            <div class="card-reveal">
                                <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                <p>${post.content}</p>
                            </div>
                            -->

                                <div class="card-image">
                                    <img src="http://materializecss.com/images/office.jpg">
                                    <span class="card-title">${post.title}</span>
                                </div>
                                <div class="card-content">
                                    <a href="articles/${post.id}" target="_blank">${post.content?substring(0,10)}...</a>
                                </div>
                                <div class="card-action">
                                    <div class="col m4">
                                        阅读 99
                                    </div>
                                    <div class="col m4">
                                        评论 99
                                    </div>
                                    <div class="col m4">
                                        <i class="material-icons grey-text">thumb_up</i>
                                        99
                                    </div>
                                </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>

    </div>
    <br><br>

    <div class="section">
        <div class="fixed-action-btn horizontal" style="bottom: 45px; right: 24px;">
            <a class="btn-floating btn-large red">
                <i class="large material-icons">mode_edit</i>
            </a>
            <ul>
                <li><a class="btn-floating red modal-trigger tooltipped" data-position="top" data-delay="50" data-tooltip="文章" href="#modal1"><i class="material-icons">insert_chart</i></a></li>
                <li><a class="btn-floating yellow darken-1"><i class="material-icons">message</i></a></li>
                <li><a class="btn-floating green"><i class="material-icons">image</i></a></li>
                <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
            </ul>
        </div>
    </div>

    <#include "post/post-article.ftl"/>
</div>