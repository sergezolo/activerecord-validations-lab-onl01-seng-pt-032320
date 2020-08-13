class TitleValidator < ActiveModel::Validator
    
    def validate(post)
        titles = ["Won't Believe","Secret", "Top", "Guess"]
        if post.title != nil 
            unless titles.any?{|title| post.title.include?(title)}
            post.errors[:title] << "Must be clickbait!" 
        end
    end
    end
end