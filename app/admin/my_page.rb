ActiveAdmin.register_page "Blog" do
  controller do

    def index
      columns do
          column do
            panel "Derniers articles publiés" do
              ul do
                Post.recent(5).map do |post|
                  li link_to(post.titre, admin_post_path(post))
                end
              end
            end
          end
        end
    end

    def create
      @post = Article.new(post_params)
      @post.save
      redirect_to '/blog'

    end
    def new

    end

    private
      def post_params
        params_require(:article).permit(:titre, :contenu)
      end

  end

  content do
    form_for @post do |f|
      f.label :titre
      f.input :titre

      f.label :contenu
      f.textarea :contenu

      f.submit
    end
  end
end