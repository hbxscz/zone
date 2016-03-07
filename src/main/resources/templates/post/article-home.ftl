<!DOCTYPE html>
<html lang="en">
<#include "../vars.ftl"/>
<#include "../head.ftl"/>
<#--<body style="background-image:url(/image/body_bg.jpg);background-position:center; background-repeat:repeat-y">-->
<body>
<#include "../nav.ftl"/>
<#include "article-main.ftl"/>

<!--  Scripts-->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="${jsPath}/materialize.js"></script>
<script src="${jsPath}/init.js"></script>
<script src="plugin/ckeditor/ckeditor.js"></script>
<script src="${jsPath}/main.js"></script>
<script src="https://npmcdn.com/masonry-layout@4.0/dist/masonry.pkgd.js"></script>

</body>
</html>