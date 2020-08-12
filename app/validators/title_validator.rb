class TitleValidator < ActiveModel::Validator
    def validate(post)
        if post.title != nil
            unless post.title.include? ("Won't Believe" || "Secret" || "Top [number]" || "Guess")
                post.errors[:title] << "Must be clickbait!"
            end
        end
    end
end