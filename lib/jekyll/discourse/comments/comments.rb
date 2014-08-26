module Jekyll
  module Discourse
    module Comments

      class Comments < Generator

        def generate(site)
          @site = site

          process_posts
        end

        def process_posts
          @site.posts.each do |post|
            post.content += snippet(post.url)
          end
        end

        def snippet(url)
          <<-EOF.unindent
            <div id="discourse-comments"></div>

            <script type="text/javascript">
              var discourseUrl = "#{@site.config['discourse_url']}",
                  discourseEmbedUrl = "#{@site.config['url'] + @site.config['baseurl'] + url}";

              (function() {
                var d = document.createElement('script'); d.type = 'text/javascript'; d.async = true;
                  d.src = discourseUrl + 'javascripts/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(d);
              })();
            </script>
          EOF
        end
      end

    end
  end
end
